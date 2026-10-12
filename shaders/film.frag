// Film, on the negative: the passes film_passes.lucb runs on the CPU, step for
// step, at the scene's own size before the develop draws it (the develop then
// reads the filmed scene in place of the camera's). One shader, a stage per
// draw, reading texels exactly (no filtering) so the CPU can follow it:
//
//   0  expose: the scene through the develop's matrix and lens vignetting into
//      AP1, then into the three layers' exposure (film.lucb's `expose`)
//   1  blur along (dx, dy), per channel: an exponential of that length (light
//      scattered in the emulsion) or a Gaussian of that σ (halation's spread,
//      the inhibitor's diffusion), in px
//   2  halation: the scattered exposure (image 2) plus the halation weights
//      times a vertical blur of image 1, the horizontally blurred exposure
//   3  the inhibitor's source: each layer's dye if nothing held it back (on a
//      slide, the first developer's negative image)
//   4  develop: held back by the blurred inhibitor (image 2), grain, the scan,
//      back to AP1 (film.lucb's `scan`)
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
    vec4 lens;      // the output's aspect (for lens vignetting, as the develop has it)
} params;
layout(set = 0, binding = 1) uniform sampler2D first_image;
layout(set = 0, binding = 2) uniform sampler2D second_image;
layout(set = 0, binding = 3) uniform sampler2D tables;
layout(set = 0, binding = 4) uniform sampler2D film;

const float table_width = 1024.0;
const float film_width = 1089.0;
const float film_rows = 85.0;
const float film_lut_size = 33.0;
const float film_grid = 48.0;

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
vec4 film_value(float at) {
    return texture(film, vec2((at + 0.5) / film_width, 84.5 / film_rows));
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
float grain_gain(float cell) {
    float side = 42.5 / cell;
    return side / (0.56 * (1.0 - exp(-side / 1.35)));
}

vec3 fetch(sampler2D image, ivec2 at) {
    ivec2 size = textureSize(image, 0);
    return texelFetch(image, clamp(at, ivec2(0), size - 1), 0).rgb;
}

float tap(float d, float size, bool exponential) {
    if (size <= 1e-3) return d == 0.0 ? 1.0 : 0.0;
    return exponential ? exp(-abs(d) / size) : exp(-0.5 * d * d / (size * size));
}

vec3 blurred(sampler2D image, ivec2 at, ivec2 step, vec4 sigma, int radius) {
    vec3 sum = vec3(0.0);
    vec3 weights = vec3(0.0);
    bool exponential = sigma.a > 0.5;
    for (int i = -radius; i <= radius; i++) {
        float d = float(i);
        vec3 w = vec3(tap(d, sigma.r, exponential), tap(d, sigma.g, exponential), tap(d, sigma.b, exponential));
        sum += w * fetch(image, at + step * i);
        weights += w;
    }
    return sum / weights;
}

float lens_radius(vec2 uv, float aspect) {
    vec2 p = (uv - 0.5) * 2.0 * vec2(aspect, 1.0);
    return length(p) / length(vec2(aspect, 1.0));
}

vec3 expose(vec3 c) {
    vec3 xyz = vec3(dot(film_value(0.0).rgb, c), dot(film_value(1.0).rgb, c), dot(film_value(2.0).rgb, c));
    float sum = xyz.x + xyz.y + xyz.z;
    if (sum <= 1e-12 || xyz.y <= 1e-12) return vec3(1e-8);
    vec2 g = clamp(vec2(xyz.x / sum / 0.8, xyz.y / sum / 0.9), 0.0, 1.0) * (film_grid - 1.0);
    return film_texels(g.x, 33.0 + g.y) * xyz.y;
}

vec3 log_exposure(vec3 e) {
    return log(max(e / 0.18, vec3(1e-8))) / log(10.0) + film_value(6.0).x;
}

// The developed negative at texel `at`: each layer's dye, and the effective log
// H it developed at (film.lucb's `developed`).
void developed(ivec2 at, out vec3 amounts, out vec3 effective) {
    vec3 log_h = log_exposure(fetch(first_image, at));
    vec3 held = fetch(second_image, at);
    effective = log_h - vec3(dot(film_value(3.0).rgb, held), dot(film_value(4.0).rgb, held), dot(film_value(5.0).rgb, held));
    amounts = film_curve(82.0, effective);
}

void main() {
    ivec2 at = ivec2(floor(gl_FragCoord.xy - params.rect.xy));
    int stage = int(params.stage.x + 0.5);
    ivec2 step = ivec2(params.stage.yz);
    int radius = int(params.stage.w + 0.5);
    vec3 out_color;
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
        out_color = expose(c);
    } else if (stage == 1) {
        out_color = blurred(first_image, at, step, params.sigma, radius);
    } else if (stage == 2) {
        out_color = fetch(second_image, at) + params.halo.rgb * blurred(first_image, at, step, params.sigma, radius);
    } else if (stage == 3) {
        // What holds development back: the dye on a negative, the first
        // developer's negative image on a slide (film.lucb's `inhibitor`).
        vec3 dye = film_curve(81.0, log_exposure(fetch(first_image, at)));
        vec4 v17 = film_value(17.0);
        out_color = v17.w > 0.5 && v17.w < 1.5 ? v17.rgb - dye : dye;
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
            float cell = max(8.0, pitch);
            float scale = v6.w * grain_gain(cell);
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
                    float w = exp(-2.0 * dot(d, d));
                    vec3 place_amounts;
                    vec3 place_effective;
                    developed(ivec2(floor((centre - 1.0) * cell / pitch)), place_amounts, place_effective);
                    vec3 strength = vec3(hashed(k + uvec2(0u, 0x85ebca6bu)), hashed(k + uvec2(7919u, 0x85ebca6bu + 104729u)),
                                         hashed(k + uvec2(15838u, 0x85ebca6bu + 209458u))) * 2.0 - 1.0;
                    // Black and white: one grain of silver for all three.
                    if (kind > 1.5) strength = vec3(strength.r);
                    vec3 amplitude = film_curve(83.0, place_effective) * scale;
                    sum += w * (place_amounts + strength * amplitude);
                    spread += w * amplitude;
                    total += w;
                }
            }
            amounts = sum / total;
            vec3 sigma = 0.326 * spread / total;
            unbias = kind > 0.5 && kind < 1.5 ? vec3(0.0) : 0.5 * 2.302585092994046 * v8.rgb * sigma * sigma;
        } else {
            developed(at, amounts, effective);
        }
        vec3 d = film_scan(amounts, v6.y);
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
    fragment_color = vec4(out_color, 1.0);
}
