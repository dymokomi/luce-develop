// Film, on the negative: the passes film_passes.lucb runs on the CPU, step for
// step, at the scene's own size before the develop draws it (the develop then
// reads the filmed scene in place of the camera's). One shader, a stage per
// draw, reading texels exactly (no filtering) so the CPU can follow it:
//
//   0  expose: the scene through the develop's matrix and lens vignetting into
//      AP1, then into the three layers' exposure (film.lucb's `expose`)
//   1  blur along (dx, dy), per channel: an exponential of that length (light
//      scattered in the emulsion) or a Gaussian of that σ (halation's spread,
//      the inhibitor's diffusion), in px; alpha by a Gaussian of its own (the
//      developer's exhaustion spreading), or not at all
//   2  halation: the scattered exposure (image 2) plus the halation weights
//      times a vertical blur of image 1, the horizontally blurred exposure
//   3  the inhibitor's source: each layer's dye if nothing held it back (on a
//      slide, the first developer's negative image); in alpha the developer it
//      uses up (film.lucb's `exhaustion`)
//   4  develop: held back by the blurred inhibitor and exhaustion (image 2),
//      grain, the scan, back to AP1 (film.lucb's `scan`)
//
//   image 1, 2  the stage's inputs, RGBA half floats at the scene's size
//   image 3     the develop's tables (tables.lucb), for the lens vignetting
//   image 4     the film atlas (film.lucb)
#version 450
layout(location = 0) in vec4 vertex_color;
layout(location = 0) out vec4 fragment_color;
layout(push_constant) uniform Params {
    vec4 rect;      // the whole target: 0, 0, width, height
    vec4 stage;     // the stage, the blur's dx, dy, its radius in px
    vec4 sigma;     // the blur's size per channel, px; 1 for an exponential, 0 a Gaussian
    vec4 halo;      // halation's weight per layer; µm per scene pixel
    vec4 row0;      // stage 0: the matrix from the scene texture to AP1, by rows
    vec4 row1;
    vec4 row2;
    vec4 lens;      // the output's aspect (for lens vignetting, as the develop has it); alpha's blur σ, px; the lens's veil
} params;
layout(set = 0, binding = 1) uniform sampler2D first_image;
layout(set = 0, binding = 2) uniform sampler2D second_image;
layout(set = 0, binding = 3) uniform sampler2D tables;
layout(set = 0, binding = 4) uniform sampler2D film;

const float table_width = 1024.0;
const float film_width = 1089.0;
const float film_rows = 37.0;
const float film_lut_size = 33.0;

vec4 value(float at) {
    return texture(tables, vec2((at + 0.5) / table_width, 3.5 / 4.0));
}
// The atlas at (x, y) in texels, bilinear between texel centres with exact
// weights, as film.lucb reads it (the hardware's filtering weighs in 1/256ths,
// which a slide's steep curves would show).
vec3 film_texels(float x, float y) {
    vec2 p = vec2(x, y);
    vec2 base = floor(p);
    vec2 f = p - base;
    ivec2 b = ivec2(base);
    ivec2 top = ivec2(int(film_width) - 1, int(film_rows) - 1);
    vec3 a = texelFetch(film, min(b, top), 0).rgb;
    vec3 c = texelFetch(film, min(b + ivec2(1, 0), top), 0).rgb;
    vec3 d = texelFetch(film, min(b + ivec2(0, 1), top), 0).rgb;
    vec3 e = texelFetch(film, min(b + ivec2(1, 1), top), 0).rgb;
    return mix(mix(a, c, f.x), mix(d, e, f.x), f.y);
}
// The values row's column `at`, read exactly: its neighbours hold unrelated
// numbers (filtering would blend a little of them in).
vec4 film_value(float at) {
    return texelFetch(film, ivec2(int(at + 0.5), int(film_rows) - 1), 0);
}
// A curve row at log H, all three channels at that place.
vec3 film_along(float row, float log_h) {
    return film_texels(clamp((log_h + 4.5) / 7.0, 0.0, 1.0) * 1023.0, row);
}
vec3 film_curve(float row, vec3 log_h) {
    return vec3(film_along(row, log_h.r).r, film_along(row, log_h.g).g, film_along(row, log_h.b).b);
}
// The scan's table at dye amounts `a`, trilinear with exact weights (texel
// reads, not the hardware's coarse filtering: a slide's table is steep).
vec3 film_lut(float x, float y) {
    return texelFetch(film, ivec2(int(x), int(y)), 0).rgb;
}
vec3 film_scan(vec3 a, float top) {
    vec3 s = clamp(a / top, 0.0, 1.0) * (film_lut_size - 1.0);
    vec3 base = min(floor(s), vec3(film_lut_size - 2.0));
    vec3 f = s - base;
    vec3 c00 = mix(film_lut(base.b * film_lut_size + base.r, base.g), film_lut(base.b * film_lut_size + base.r + 1.0, base.g), f.r);
    vec3 c01 = mix(film_lut(base.b * film_lut_size + base.r, base.g + 1.0), film_lut(base.b * film_lut_size + base.r + 1.0, base.g + 1.0), f.r);
    vec3 c10 = mix(film_lut((base.b + 1.0) * film_lut_size + base.r, base.g), film_lut((base.b + 1.0) * film_lut_size + base.r + 1.0, base.g), f.r);
    vec3 c11 = mix(film_lut((base.b + 1.0) * film_lut_size + base.r, base.g + 1.0), film_lut((base.b + 1.0) * film_lut_size + base.r + 1.0, base.g + 1.0), f.r);
    return mix(mix(c00, c01, f.g), mix(c10, c11, f.g), f.b);
}
// A hash of a cell to 0..1, the same as film.lucb's.
float hashed(uvec2 p) {
    uint x = p.x * 1664525u + p.y * 1013904223u;
    x ^= x >> 16; x *= 0x7feb352du; x ^= x >> 15; x *= 0x846ca68bu; x ^= x >> 16;
    return float(x >> 8) / 16777216.0;
}
float grain_gain(float cell, float a, float b) {
    float side = 42.5 / cell;
    return side / (a * (1.0 - exp(-side / b)));
}

vec3 fetch(sampler2D image, ivec2 at) {
    ivec2 size = textureSize(image, 0);
    return texelFetch(image, clamp(at, ivec2(0), size - 1), 0).rgb;
}

float tap(float d, float size, bool exponential) {
    if (size <= 1e-3) return d == 0.0 ? 1.0 : 0.0;
    return exponential ? exp(-abs(d) / size) : exp(-0.5 * d * d / (size * size));
}

vec4 fetch4(sampler2D image, ivec2 at) {
    ivec2 size = textureSize(image, 0);
    return texelFetch(image, clamp(at, ivec2(0), size - 1), 0);
}

vec4 blurred(sampler2D image, ivec2 at, ivec2 step, vec4 sigma, float alpha_sigma, int radius) {
    vec4 sum = vec4(0.0);
    vec4 weights = vec4(0.0);
    bool exponential = sigma.a > 0.5;
    for (int i = -radius; i <= radius; i++) {
        float d = float(i);
        vec4 w = vec4(tap(d, sigma.r, exponential), tap(d, sigma.g, exponential), tap(d, sigma.b, exponential), tap(d, alpha_sigma, false));
        sum += w * fetch4(image, at + step * i);
        weights += w;
    }
    return sum / weights;
}

float lens_radius(vec2 uv, float aspect) {
    vec2 p = (uv - 0.5) * 2.0 * vec2(aspect, 1.0);
    return length(p) / length(vec2(aspect, 1.0));
}

// The camera's values, then each layer's root-polynomial of them (thirteen
// terms, two texels of weights each), floored at 2% of the three's mean
// (film_exposure.lucb's `apply`).
vec3 expose(vec3 c) {
    vec3 v = max(vec3(dot(film_value(0.0).rgb, c), dot(film_value(1.0).rgb, c), dot(film_value(2.0).rgb, c)), vec3(0.0));
    float t[13] = float[13](v.r, v.g, v.b, sqrt(v.r * v.g), sqrt(v.g * v.b), sqrt(v.r * v.b),
                           pow(v.r * v.r * v.g, 1.0 / 3.0), pow(v.r * v.r * v.b, 1.0 / 3.0), pow(v.g * v.g * v.r, 1.0 / 3.0),
                           pow(v.g * v.g * v.b, 1.0 / 3.0), pow(v.b * v.b * v.r, 1.0 / 3.0), pow(v.b * v.b * v.g, 1.0 / 3.0),
                           pow(v.r * v.g * v.b, 1.0 / 3.0));
    vec3 e = vec3(0.0);
    // Each weight in two halves (film.lucb): the half float and what it misses.
    for (int k = 0; k < 13; k++) e += (film_value(22.0 + float(k)).rgb + film_value(35.0 + float(k)).rgb) * t[k];
    e = max(e, vec3(0.02 * (e.r + e.g + e.b) / 3.0));
    // Reciprocity failure, each layer at its own exposure (film_exposure.lucb's
    // `failure`): stops q·log2(1 + (t·0.18/e / t0)^p).
    float seconds = film_value(51.0).x;
    for (int layer = 0; layer < 3; layer++) {
        vec3 law = film_value(48.0 + float(layer)).rgb;
        if (law.x > 0.0) {
            float longer = seconds * 0.18 / max(e[layer], 1e-6);
            e[layer] *= exp2(-law.x * log2(1.0 + pow(longer / law.z, law.y)));
        }
    }
    // Flashing: an even share of grey's exposure (film.lucb's `expose`).
    float flash = film_value(21.0).x * 0.18;
    return max(e, vec3(1e-8)) + flash;
}

vec3 log_exposure(vec3 e) {
    return log(max(e / 0.18, vec3(1e-8))) / log(10.0) + film_value(6.0).x;
}

// `image` at (`p.x`, `p.y`) in texels, bilinear between texel centres with
// exact weights, held at the edges.
vec3 bilinear(sampler2D image, vec2 p) {
    vec2 base = floor(p);
    vec2 f = p - base;
    ivec2 b = ivec2(base);
    vec3 a = fetch(image, b);
    vec3 c = fetch(image, b + ivec2(1, 0));
    vec3 d = fetch(image, b + ivec2(0, 1));
    vec3 e = fetch(image, b + ivec2(1, 1));
    return mix(mix(a, c, f.x), mix(d, e, f.x), f.y);
}

// How far each layer at log H `log_h` has developed `share` of the way through
// the development (film_develop.lucb's `progress`): the kinetics' silver then
// over its silver at the end.
float factor_at(float saturation, float slope, float log_h, float grey, float start, float time) {
    float u = saturation * pow(10.0, slope * (log_h - grey));
    float running = max(time - start, 0.0) / max(1.0 - start, 1e-9);
    return (1.0 - exp(-u * running)) / max(1.0 - exp(-u), 1e-12);
}
vec3 progress(vec3 log_h, float share) {
    vec4 v52 = film_value(52.0);
    vec4 v53 = film_value(53.0);
    float time = film_value(54.0).x;
    vec3 out_share;
    for (int k = 0; k < 3; k++) {
        float whole = factor_at(v52[k], v53[k], log_h[k], v53.w, v52.w, time);
        out_share[k] = factor_at(v52[k], v53[k], log_h[k], v53.w, v52.w, time * clamp(share, 0.0, 1.0)) / max(whole, 1e-12);
    }
    return out_share;
}

// The developed negative at texel `at`: each layer's dye, and the effective log
// H it developed at (film.lucb's `developed`), `share` of the way through.
void developed(ivec2 at, out vec3 amounts, out vec3 effective) {
    vec3 log_h = log_exposure(fetch(first_image, at));
    vec4 around = fetch4(second_image, at);
    vec3 held = around.rgb;
    // The edge effects: developer missing beyond what an even field of this
    // exposure would miss (film.lucb's `developed`).
    vec3 dye = film_curve(33.0, log_h);
    vec4 v17 = film_value(17.0);
    vec3 neutral_held = v17.w > 0.5 && v17.w < 1.5 ? v17.rgb - dye : dye;
    float even = dot(neutral_held / max(v17.rgb, vec3(1e-9)), vec3(1.0 / 3.0)) * film_value(54.0).w;
    effective = log_h - vec3(dot(film_value(3.0).rgb, held), dot(film_value(4.0).rgb, held), dot(film_value(5.0).rgb, held))
              - film_value(20.0).z * (around.a - even);
    amounts = film_curve(34.0, effective);
    float share = params.row0.x;
    if (share < 1.0) {
        // Part of the way: from the unexposed film's (a negative's fog, a
        // slide's most dye), grown as far as the kinetics say.
        vec3 base = film_curve(34.0, vec3(-4.5));
        amounts = base + (amounts - base) * progress(effective, share);
    }
}

void main() {
    ivec2 at = ivec2(floor(gl_FragCoord.xy - params.rect.xy));
    int stage = int(params.stage.x + 0.5);
    ivec2 step = ivec2(params.stage.yz);
    int radius = int(params.stage.w + 0.5);
    vec3 out_color;
    float spent = 1.0;
    if (stage == 0) {
        vec3 camera = fetch(first_image, at);
        vec3 c = max(vec3(dot(params.row0.xyz, camera), dot(params.row1.xyz, camera), dot(params.row2.xyz, camera)), vec3(0.0));
        vec4 v = value(5.0);
        if (v.y > 0.0) {
            vec2 uv = (vec2(at) + 0.5) / params.rect.zw;
            float start = v.z * 0.6;
            float t = clamp((lens_radius(uv, params.lens.x) - start) / (1.0 - start), 0.0, 1.0);
            c *= 1.0 + v.y * 2.0 * t * t;
        }
        // The lens's veiling glare, an even light (lens.lucb).
        out_color = expose(c + vec3(params.lens.z));
    } else if (stage == 1) {
        vec4 blur = blurred(first_image, at, step, params.sigma, params.lens.y, radius);
        out_color = blur.rgb;
        spent = blur.a;
    } else if (stage == 5) {
        // Halation, 1: the exposure averaged over blocks of `radius` texels.
        vec3 sum = vec3(0.0);
        for (int y = 0; y < radius; y++)
            for (int x = 0; x < radius; x++) sum += fetch(first_image, at * radius + ivec2(x, y));
        out_color = sum / float(radius * radius);
    } else if (stage == 6) {
        // 2: gathered at the kernel's samples (film_halation.lucb), each an
        // offset in µm, at this block size (`radius` texels of `pitch` µm).
        float block = float(radius) * params.halo.w;
        vec3 sum = vec3(0.0);
        for (int k = 0; k < 256; k++) {
            vec2 offset = film_value(64.0 + float(k)).rg / block;
            sum += bilinear(first_image, vec2(at) + offset);
        }
        out_color = sum / 256.0;
    } else if (stage == 7) {
        // 3: the halo, back at full size, each layer at its strength, onto the
        // scattered exposure.
        vec2 low = (vec2(at) + 0.5) / float(radius) - 0.5;
        out_color = fetch(second_image, at) + params.halo.rgb * bilinear(first_image, low);
    } else if (stage == 8) {
        // A step of development (film.lucb's `release`): what each layer
        // releases as it develops from share row0.x to row0.y of the way (the
        // dye on a negative, the first developer's image on a slide), and in
        // alpha the developer it uses, row0.z of it still missing at the end.
        vec3 log_h = log_exposure(fetch(first_image, at));
        vec3 dye = film_curve(33.0, log_h);
        vec4 v17 = film_value(17.0);
        vec3 held = v17.w > 0.5 && v17.w < 1.5 ? v17.rgb - dye : dye;
        vec3 grown = progress(log_h, params.row0.y) - progress(log_h, params.row0.x);
        out_color = held * grown;
        spent = params.row0.z * dot(held / max(v17.rgb, vec3(1e-9)), grown) / 3.0;
    } else if (stage == 9) {
        // The step's release spread down and added to what earlier steps left
        // (row0.w: none yet).
        vec4 blur = blurred(first_image, at, step, params.sigma, params.lens.y, radius);
        vec4 before = params.row0.w > 0.5 ? vec4(0.0) : fetch4(second_image, at);
        out_color = before.rgb + blur.rgb;
        spent = before.a + blur.a;
    } else if (stage == 3) {
        // What holds development back: the dye on a negative, the first
        // developer's negative image on a slide (film.lucb's `inhibitor`).
        vec3 dye = film_curve(33.0, log_exposure(fetch(first_image, at)));
        vec4 v17 = film_value(17.0);
        out_color = v17.w > 0.5 && v17.w < 1.5 ? v17.rgb - dye : dye;
        spent = dot(out_color / max(v17.rgb, vec3(1e-9)), vec3(1.0 / 3.0));
    } else {
        vec3 amounts;
        vec3 effective;
        vec4 v6 = film_value(6.0);
        vec4 v8 = film_value(8.0);
        vec3 unbias = vec3(0.0);
        if (v6.w > 0.0) {
            // The image made of dye clouds, each the negative at its centre plus
            // its grain (film.lucb's `clouded`).
            float pitch = params.halo.w;
            vec4 v18 = film_value(18.0);
            float cell = max(v18.x, pitch);
            float scale = v6.w * grain_gain(cell, v18.z, v18.w);
            float kind = film_value(17.0).w;
            vec2 p = (vec2(at) + 0.5) * pitch / cell + 1.0;
            ivec2 c = ivec2(floor(p));
            vec3 sum = vec3(0.0);
            vec3 spread = vec3(0.0);
            float total = 0.0;
            for (int dy = -1; dy <= 1; dy++) {
                for (int dx = -1; dx <= 1; dx++) {
                    uvec2 k = uvec2(c + ivec2(dx, dy));
                    vec2 centre = vec2(c + ivec2(dx, dy)) + floor(vec2(hashed(k), hashed(k + uvec2(0x9e3779b9u, 0u))) * 256.0) / 256.0;
                    vec2 d = p - centre;
                    float w = exp(-v18.y * dot(d, d));
                    vec3 place_amounts;
                    vec3 place_effective;
                    developed(ivec2(floor((centre - 1.0) * cell / pitch)), place_amounts, place_effective);
                    // The cloud's grains, many per population: the share
                    // developed spreads binomially about P, by a deviate fixed
                    // for the site (film.lucb's `clouded`); black and white:
                    // one realization of silver for all three layers.
                    vec3 noise = vec3(0.0);
                    vec3 variance = vec3(0.0);
                    for (int layer = 0; layer < 3; layer++) {
                        uint grain_layer = kind > 1.5 ? 0u : uint(layer);
                        for (int pop = 0; pop < 3; pop++) {
                            vec4 v = film_value(320.0 + float(layer * 3 + pop));
                            float share = 1.0 / (1.0 + exp(-(place_effective[layer] - v.x) / v.y));
                            uint index = grain_layer * 3u + uint(pop);
                            float first = hashed(k + uvec2(index * 7919u, 0x85ebca6bu + index * 104729u));
                            float second = hashed(k + uvec2(index * 7919u + 0x632be5abu, 0x85ebca6bu + index * 104729u));
                            float deviate = sqrt(-2.0 * log(max(first, 1e-7))) * cos(6.283185307179586 * second);
                            float spread = share * (1.0 - share);
                            noise[layer] += v.z * sqrt(spread) * deviate;
                            variance[layer] += v.z * v.z * spread;
                        }
                    }
                    // A slide's developed grains take dye away (the first developer's).
                    float sign_of = kind > 0.5 && kind < 1.5 ? -1.0 : 1.0;
                    vec3 corrected = film_curve(35.0, place_effective) * scale;
                    sum += w * (place_amounts + sign_of * noise * corrected);
                    spread += w * sqrt(3.0 * variance) * corrected;
                    total += w;
                }
            }
            amounts = sum / total;
            vec3 sigma = film_value(19.0).x * spread / total;
            unbias = kind > 0.5 && kind < 1.5 ? vec3(0.0) : 0.5 * 2.302585092994046 * v8.rgb * sigma * sigma;
        } else {
            developed(at, amounts, effective);
        }
        vec3 d = film_scan(amounts, v6.y);
        // The bleach bypassed: retained silver, neutral density with the image.
        vec4 v20 = film_value(20.0);
        d += v20.x * max(dot(d, vec3(1.0 / 3.0)) - v20.y, 0.0);
        float slide = film_value(17.0).w;
        if (slide > 0.5 && slide < 1.5) {
            // A slide: scene light (asinh-encoded), Contrast a power about grey; the timing.
            vec3 grown = exp(d);
            vec3 light_out = 0.5 * (grown - 1.0 / grown) / 256.0;
            fragment_color = vec4(0.18 * pow(max(light_out, 0.0) / 0.18, v8.rgb) * film_value(10.0).rgb, 1.0);
            return;
        }
        vec4 v7 = film_value(7.0);
        vec3 floors = film_value(9.0).rgb;
        vec3 shown = 0.18 * pow(vec3(10.0), (d - unbias - v7.rgb) * v8.rgb);
        vec3 linear_light = (shown - v8.w * floors) / (1.0 - v8.w * floors / 0.18);
        vec3 scene = vec3(dot(film_value(11.0).rgb, linear_light), dot(film_value(12.0).rgb, linear_light), dot(film_value(13.0).rgb, linear_light));
        out_color = max(scene * film_value(10.0).rgb, 0.0);
    }
    fragment_color = vec4(out_color, spent);
}
