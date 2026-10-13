// Film, on the negative (film.comp runs these stages): the passes film_passes.lucb runs on the CPU, step for
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
//  10  the effective log H the film developed at (for the stochastic render)
//  11  the stochastic render's traced pixels (film_grains.lucb, film_passes.lucb's
//      `stochastic_reading`): the grains reaching the pixel gathered, row0.z
//      samples among them, each the light through the grains at a point of
//      the pixel over the light through the developed film there; their mean
//      (alpha 1: traced). Image 1 the effective log H
//  12  the stochastic render read back: traced pixels' mean light (image 2) as
//      density over the developed film's reading, less the traced grains'
//      average, the others drawn from their distribution; the grain's
//      strength about the developed film's reading, then the scan as stage 4
//  15  no grains traced yet (alpha 0)
//
//   image 1, 2  the stage's inputs, RGBA half floats at the scene's size
//   image 3     the develop's tables (tables.lucb), for the lens vignetting
//   image 4     the film atlas (film.lucb)
//
// Included by film.comp, which declares the push constants (`params`), the
// sampled images (first_image, second_image, tables, film) and the target.
const float table_width = 1024.0;
const float film_width = 1089.0;
const float film_rows = 41.0;
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

// film_grains.lucb, step for step.
uint mixed(uint px, uint py) {
    uint x = px * 1664525u + py * 1013904223u;
    x ^= x >> 16; x *= 0x7feb352du; x ^= x >> 15; x *= 0x846ca68bu; x ^= x >> 16;
    return x;
}
float fraction(uint x) { return float(x >> 8) / 16777216.0; }
uint cell_seed(uint cx, uint cy, uint stream) { return mixed(cx + stream * 0x9e3779b9u, cy ^ (stream * 0x85ebca6bu)); }
vec2 grain_place(uint seed, uint j) {
    uint h = mixed(seed, j * 2u);
    return vec2(float(h & 0xffffu), float(h >> 16)) / 65536.0 + 1.0 / 131072.0;
}
vec2 grain_size_rank(uint seed, uint j) {
    uint h = mixed(seed, j * 2u + 1u);
    return vec2(0.6 + 0.8 * float(h & 0xffffu) / 65536.0, float(h >> 16) / 65536.0);
}
uint grain_count(uint seed, float mean) {
    if (mean <= 0.0) return 0u;
    if (mean > 24.0) {
        float first = max(fraction(mixed(seed, 0xfffffff1u)), 1e-7);
        float second = fraction(mixed(seed, 0xfffffff2u));
        float z = sqrt(-2.0 * log(first)) * cos(6.283185307179586 * second);
        return uint(clamp(floor(mean + sqrt(mean) * z + 0.5), 0.0, 96.0));
    }
    float u = fraction(mixed(seed, 0xffffff00u));
    float p = exp(-mean);
    float cumulative = p;
    uint count = 0u;
    while (u > cumulative && count < 96u) {
        count++;
        p *= mean / float(count);
        cumulative += p;
    }
    return count;
}
vec2 sample_place(uint px, uint py, uint k) {
    vec2 r = vec2(fraction(mixed(px, py ^ 0x51ed27u)), fraction(mixed(py + 0x2545f491u, px)));
    return fract(r + vec2(0.7548776662466927, 0.5698402909980532) * float(k));
}
// A grain table row (36 + layer) at log H: the populations' shares, the
// clouds' strength (film.lucb's `grain_table`).
vec4 grain_table(int layer, float log_h) {
    float x = clamp((log_h + 4.5) / 7.0, 0.0, 1.0) * 1023.0;
    float below = min(floor(x), 1022.0);
    float t = x - below;
    vec4 a = texelFetch(film, ivec2(int(below), 36 + layer), 0);
    vec4 b = texelFetch(film, ivec2(int(below) + 1, 36 + layer), 0);
    return mix(a, b, t);
}
// film_grains.lucb's `light_taken`, from the values (340–387).
float taken(float q) {
    float place = clamp(log(max(q, 0.002) / 0.002) / log(120.0 / 0.002), 0.0, 1.0) * 47.0;
    float below = min(floor(place), 46.0);
    float t = place - below;
    return mix(film_value(340.0 + below).x, film_value(341.0 + below).x, t);
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

// The inhibitor each layer releases with its dye at log H `log_h` held back by
// `held` (film.lucb's `inhibiting`): its dye once developed (on a slide, the
// first developer's image: what the dye is not).
vec3 inhibiting(vec3 log_h, vec3 held) {
    vec3 held_back = log_h - vec3(dot(film_value(3.0).rgb, held), dot(film_value(4.0).rgb, held), dot(film_value(5.0).rgb, held));
    vec3 dye = film_curve(34.0, held_back);
    vec4 v17 = film_value(17.0);
    return v17.w > 0.5 && v17.w < 1.5 ? v17.rgb - dye : dye;
}

// The developed negative at texel `at`: each layer's dye, and the effective log
// H it developed at (film.lucb's `developed`), `share` of the way through.
void developed(ivec2 at, out vec3 amounts, out vec3 effective) {
    vec3 log_h = log_exposure(fetch(first_image, at));
    vec4 around = fetch4(second_image, at);
    vec3 held = around.rgb;
    // The edge effects: developer missing beyond what an even field of this
    // exposure would miss (film.lucb's `developed`).
    // The developer an even field of this exposure still misses at the end
    // (film.lucb's `even_field`): each step's dye formed under the inhibitor
    // the steps before released, its use, less the bath's renewal.
    vec4 v17 = film_value(17.0);
    vec4 v55 = film_value(55.0);
    int steps = int(v55.x + 0.5);
    float even = 0.0;
    vec3 even_held = vec3(0.0);
    vec3 before = vec3(0.0);
    for (int step = 1; step <= steps; step++) {
        vec3 now = progress(log_h, float(step) / float(steps));
        vec3 forms = inhibiting(log_h, even_held);
        even_held += forms * (now - before);
        even += pow(v55.y, float(steps - step)) * dot(forms / max(v17.rgb, vec3(1e-9)), now - before) / 3.0;
        before = now;
    }
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

// The scan's reading of dye `a` as density, the retained silver included (a
// slide's light as density too: film.lucb's `density_read`).
vec3 density_read(vec3 a) {
    vec3 d = film_scan(a, film_value(6.0).y);
    vec4 v20 = film_value(20.0);
    d += v20.x * max(dot(d, vec3(1.0 / 3.0)) - v20.y, 0.0);
    float kind = film_value(17.0).w;
    if (kind > 0.5 && kind < 1.5) {
        vec3 grown = exp(d);
        d = -log(max(0.5 * (grown - 1.0 / grown) / 256.0, vec3(1e-30))) / log(10.0);
    }
    return d;
}
// The scan's slopes at `a`, layer by column (film.lucb's `scan_slopes`).
mat3 scan_slopes(vec3 a) {
    float top = film_value(6.0).y;
    mat3 out_slopes;
    for (int layer = 0; layer < 3; layer++) {
        vec3 up = a;
        vec3 down = a;
        up[layer] = min(a[layer] + 0.02, top);
        down[layer] = max(a[layer] - 0.02, 0.0);
        out_slopes[layer] = max((density_read(up) - density_read(down)) / max(up[layer] - down[layer], 1e-6), vec3(0.0));
    }
    return out_slopes;
}
// The grains' average over the developed film's reading (film.lucb's `grain_bias`).
vec3 grain_bias(vec3 log_h, mat3 slopes, bvec3 traced) {
    int layers = int(film_value(338.0).w + 0.5);
    vec3 out_bias = vec3(0.0);
    for (int channel = 0; channel < 3; channel++) {
        for (int layer = 0; layer < layers; layer++) {
            if (!traced[layer]) continue;
            float factor = layers == 1 ? slopes[0][channel] + slopes[1][channel] + slopes[2][channel] : slopes[layer][channel];
            vec4 table = grain_table(layer, log_h[layer]);
            for (int p = 0; p < 3; p++) {
                vec4 v = film_value(329.0 + float(layer * 3 + p));
                float area = v.x * table[p] * v.z * v.z * 1.0533333333333332;
                float peak = v.y * table.w;
                out_bias[channel] += area * (taken(factor * peak) - factor * taken(peak));
            }
        }
    }
    return out_bias;
}
// What the film says at a grain's centre (µm) for its layer: the populations'
// shares developed (as far as the development has come) and the clouds'
// strength at the effective log H there (image 1; film_passes.lucb's
// `grain_place`).
vec4 grain_at(vec2 centre, int layer, float share, bool reversal) {
    vec3 log_h = bilinear(first_image, centre / params.halo.w - 0.5);
    vec4 place = grain_table(layer, log_h[layer]);
    if (share < 1.0) {
        float grown = progress(log_h, share)[layer];
        place.xyz = reversal ? 1.0 - (1.0 - place.xyz) * grown : place.xyz * grown;
    }
    return place;
}
// The developed grains whose clouds reach the pixel rectangle `low`..`high`
// (µm), of the traced layers (film_grains.lucb's `gather`): centres, radius²
// and peak in `clouds`, layers in `cloud_layers`; how many (more than 128: too
// many to trace).
vec4 clouds[128];
int cloud_layers[128];
int gather(vec2 low, vec2 high, int layers, bvec3 traced, vec3 bounds[3], float share, bool reversal) {
    int count = 0;
    for (int layer = 0; layer < layers; layer++) {
        if (!traced[layer]) continue;
        for (int p = 0; p < 3; p++) {
            vec4 g = film_value(329.0 + float(layer * 3 + p));
            if (g.x <= 0.0) continue;
            float largest = g.z * 1.4;
            for (uint b = 0u; b < 8u; b++) {
                float bottom_rank = b == 0u ? 0.0 : exp2(float(b) - 8.0);
                if (bottom_rank >= bounds[layer][p]) break;
                float width = exp2(float(b) - 7.0) - bottom_rank;
                float cell = max(1.4 * g.z, sqrt(8.0 / max(g.x * width, 1e-9)));
                float mean = g.x * width * cell * cell;
                uint stream = uint(layer * 3 + p + 1) * 8u + b;
                ivec2 first = ivec2(floor((low - largest) / cell)) + 4;
                ivec2 last = ivec2(floor((high + largest) / cell)) + 4;
                for (int ky = first.y; ky <= last.y; ky++) {
                    for (int kx = first.x; kx <= last.x; kx++) {
                        uint seed = cell_seed(uint(kx), uint(ky), stream);
                        uint grains = grain_count(seed, mean);
                        for (uint j = 0u; j < grains; j++) {
                            vec2 centre = (vec2(kx, ky) + grain_place(seed, j) - 4.0) * cell;
                            vec2 outside = max(max(low - centre, centre - high), vec2(0.0));
                            float near = dot(outside, outside);
                            if (near >= largest * largest) continue;
                            vec2 size_rank = grain_size_rank(seed, j);
                            float radius = g.z * size_rank.x;
                            if (near >= radius * radius) continue;
                            vec4 place = grain_at(centre, layer, share, reversal);
                            if (bottom_rank + width * size_rank.y >= place[p]) continue;
                            if (count < 128) {
                                clouds[count] = vec4(centre, radius * radius, g.y * place.w);
                                cloud_layers[count] = layer;
                            }
                            count++;
                        }
                    }
                }
            }
        }
    }
    return count;
}
// The gathered clouds' dye at `point` (µm), per layer.
vec3 dye_at(int count, vec2 point) {
    vec3 out_dye = vec3(0.0);
    for (int at = 0; at < count; at++) {
        vec2 d = point - clouds[at].xy;
        float far = dot(d, d) / clouds[at].z;
        if (far < 1.0) out_dye[cloud_layers[at]] += clouds[at].w * (1.0 - far) * (1.0 - far);
    }
    return out_dye;
}
// The most share of layer `layer`'s populations developed from log H `low` to
// `high` (film.lucb's `share_bound`).
vec3 share_bound(int layer, float low, float high) {
    vec3 out_bound = max(grain_table(layer, low).xyz, grain_table(layer, high).xyz);
    int first = int(ceil(clamp((low + 4.5) / 7.0, 0.0, 1.0) * 1023.0));
    int last = int(floor(clamp((high + 4.5) / 7.0, 0.0, 1.0) * 1023.0));
    for (int at = first; at <= last && at < 1024; at++) out_bound = max(out_bound, texelFetch(film, ivec2(at, 36 + layer), 0).xyz);
    return out_bound;
}
// Which layers of the pixel at `at` are traced, and their bounds
// (film_passes.lucb's `regimes`).
bvec3 regimes(ivec2 at, vec3 effective, int layers, out vec3 bounds[3]) {
    bvec3 traced = bvec3(false);
    float pitch = params.halo.w;
    bounds[0] = vec3(0.0); bounds[1] = vec3(0.0); bounds[2] = vec3(0.0);
    for (int layer = 0; layer < layers; layer++) {
        float largest = 0.0;
        float developed_count = 0.0;
        vec4 table = grain_table(layer, effective[layer]);
        for (int p = 0; p < 3; p++) {
            vec4 g = film_value(329.0 + float(layer * 3 + p));
            largest = max(largest, g.z);
            developed_count += g.x * table[p] * pitch * pitch;
        }
        float reach = 1.4 * 1.4 * largest;
        traced[layer] = developed_count < 16.0;
        if (!traced[layer]) continue;
        int around = int(min(ceil(reach / pitch) + 1.0, 4.0));
        float low = effective[layer];
        float high = effective[layer];
        for (int dy = -around; dy <= around; dy++) {
            for (int dx = -around; dx <= around; dx++) {
                float h = fetch(first_image, at + ivec2(dx, dy))[layer];
                low = min(low, h);
                high = max(high, h);
            }
        }
        bounds[layer] = share_bound(layer, low, high);
    }
    return traced;
}
// A standard normal deviate from a hash (film_grains.lucb's `normal_at`).
float normal_at(uint x, uint y, uint tag) {
    float first = max(fraction(mixed(x * 0x27d4eb2du + tag, y ^ 0x165667b1u)), 1e-7);
    float second = fraction(mixed(y * 0x9e3779b1u + tag, x ^ 0x85ebca77u));
    return sqrt(-2.0 * log(first)) * cos(6.283185307179586 * second);
}
// How a pixel `u` cloud radii wide averages the clouds (values 390–421).
vec3 pixel_covariance(float u) {
    float place = clamp(log(max(u, 0.25) / 0.25) / log(80.0), 0.0, 1.0) * 31.0;
    float below = min(floor(place), 30.0);
    return mix(film_value(390.0 + below).xyz, film_value(391.0 + below).xyz, place - below);
}
// The pixel's deviate, tied to its neighbours' (film_grains.lucb's `pixel_deviate`).
float pixel_deviate(uint px, uint py, uint layer, vec3 shares) {
    float side = max(shares.y / max(shares.x, 1e-12), 0.0);
    float diagonal = max(shares.z / max(shares.x, 1e-12), 0.0);
    float corner = sqrt(min(diagonal, 0.0625));
    float edge = sqrt(clamp(side - 2.0 * corner * corner, 0.0, 0.25));
    float own = sqrt(max(1.0 - 4.0 * edge * edge - 4.0 * corner * corner, 0.0));
    uint tag = layer * 8u;
    uint x = px + 1u;
    uint y = py + 1u;
    float out_deviate = own * normal_at(x, y, tag);
    out_deviate += edge * (normal_at(x, y, tag + 1u) + normal_at(x - 1u, y, tag + 1u) + normal_at(x, y, tag + 2u) + normal_at(x, y - 1u, tag + 2u));
    out_deviate += corner * (normal_at(x, y, tag + 3u) + normal_at(x - 1u, y, tag + 3u) + normal_at(x, y - 1u, tag + 3u) + normal_at(x - 1u, y - 1u, tag + 3u));
    return out_deviate;
}
// The grain of the layers not traced (film_passes.lucb's `drawn_grain`).
vec3 drawn_grain(ivec2 at, vec3 effective, mat3 slopes, bvec3 traced, int layers, float share) {
    float scale = sqrt(1809.5573684677208) / params.halo.w;
    vec3 out_grain = vec3(0.0);
    vec3 variance = vec3(0.0);
    for (int layer = 0; layer < layers; layer++) {
        if (traced[layer]) continue;
        vec4 table = grain_table(layer, effective[layer]);
        float second = 0.0;
        float fourth = 0.0;
        for (int p = 0; p < 3; p++) {
            vec4 g = film_value(329.0 + float(layer * 3 + p));
            float lambda = g.x * table[p];
            second += lambda * g.z * g.z;
            fourth += lambda * g.z * g.z * g.z * g.z;
        }
        float radius = sqrt(fourth / max(second, 1e-12));
        vec3 shares = pixel_covariance(params.halo.w / max(radius, 1e-6));
        float sigma = film_along(39.0, effective[layer])[layer] * scale * sqrt(shares.x);
        if (share < 1.0) sigma *= sqrt(progress(effective, share)[layer]);
        float z = pixel_deviate(uint(at.x), uint(at.y), uint(layer), shares);
        vec3 factor = layers == 1 ? slopes[0] + slopes[1] + slopes[2] : slopes[layer];
        out_grain += factor * sigma * z;
        variance += factor * factor * sigma * sigma;
    }
    return out_grain + 0.5 * 2.302585092994046 * variance;
}
// The developed film at effective log H `effective`, `share` of the way (film.lucb's `developed_amounts`).
vec3 developed_amounts(vec3 effective, float share) {
    vec3 amounts = film_curve(34.0, effective);
    if (share < 1.0) {
        vec3 base = film_curve(34.0, vec3(-4.5));
        amounts = base + (amounts - base) * progress(effective, share);
    }
    return amounts;
}
// The scan back to AP1 from what it read, `d` (stage 4's end, film.lucb's `finish_density`).
vec3 finish_density(vec3 d) {
    vec4 v8 = film_value(8.0);
    float slide = film_value(17.0).w;
    if (slide > 0.5 && slide < 1.5) {
        vec3 grown = exp(d);
        vec3 light_out = 0.5 * (grown - 1.0 / grown) / 256.0;
        return 0.18 * pow(max(light_out, 0.0) / 0.18, v8.rgb) * film_value(10.0).rgb;
    }
    vec4 v7 = film_value(7.0);
    vec3 floors = film_value(9.0).rgb;
    vec3 shown = 0.18 * pow(vec3(10.0), (d - v7.rgb) * v8.rgb);
    vec3 linear_light = (shown - v8.w * floors) / (1.0 - v8.w * floors / 0.18);
    vec3 scene = vec3(dot(film_value(11.0).rgb, linear_light), dot(film_value(12.0).rgb, linear_light), dot(film_value(13.0).rgb, linear_light));
    return max(scene * film_value(10.0).rgb, 0.0);
}

vec4 film_stage(ivec2 at) {
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
            vec2 uv = (vec2(at) + 0.5) / vec2(textureSize(first_image, 0));
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
        // releases with the dye it forms from share row0.x to row0.y of the way,
        // held back by the inhibitor the steps before released (image 2; none
        // at the first, row0.w), and in alpha the developer it uses, row0.z of
        // it still missing at the end.
        vec3 log_h = log_exposure(fetch(first_image, at));
        vec3 held = params.row0.w > 0.5 ? vec3(0.0) : fetch(second_image, at);
        vec3 forms = inhibiting(log_h, held);
        vec4 v17 = film_value(17.0);
        vec3 grown = progress(log_h, params.row0.y) - progress(log_h, params.row0.x);
        out_color = forms * grown;
        spent = params.row0.z * dot(forms / max(v17.rgb, vec3(1e-9)), grown) / 3.0;
    } else if (stage == 9) {
        // The step's release spread down and added to what earlier steps left
        // (row0.w: none yet).
        vec4 blur = blurred(first_image, at, step, params.sigma, params.lens.y, radius);
        vec4 before = params.row0.w > 0.5 ? vec4(0.0) : fetch4(second_image, at);
        out_color = before.rgb + blur.rgb;
        spent = before.a + blur.a;
    } else if (stage == 10) {
        vec3 amounts;
        vec3 effective;
        developed(at, amounts, effective);
        out_color = effective;
    } else if (stage == 14) {
        // Whether any pixel of this 16-pixel tile traces grains (film_gpu's runs).
        int layers = int(film_value(338.0).w + 0.5);
        float pitch = params.halo.w;
        ivec2 size = textureSize(first_image, 0);
        float traced_count = 0.0;
        for (int y = 0; y < 16; y++) {
            for (int x = 0; x < 16; x++) {
                ivec2 pixel = at * 16 + ivec2(x, y);
                if (pixel.x >= size.x || pixel.y >= size.y) continue;
                vec3 effective = texelFetch(first_image, pixel, 0).rgb;
                for (int layer = 0; layer < layers; layer++) {
                    vec4 table = grain_table(layer, effective[layer]);
                    float developed_count = 0.0;
                    for (int p = 0; p < 3; p++) developed_count += film_value(329.0 + float(layer * 3 + p)).x * table[p] * pitch * pitch;
                    if (developed_count < 16.0) traced_count += 1.0;
                }
            }
        }
        out_color = vec3(traced_count);
    } else if (stage == 11 || stage == 12 || stage == 15) {
        vec3 effective = fetch(first_image, at);
        float share = params.row0.x;
        vec3 developed_now = developed_amounts(effective, share);
        vec3 mean = density_read(developed_now);
        mat3 slopes = scan_slopes(developed_now);
        vec4 sums = fetch4(second_image, at);
        float before = params.row0.y;
        vec4 base = film_value(338.0);
        int layers = int(base.w + 0.5);
        vec3 bounds[3];
        bvec3 traced = regimes(at, effective, layers, bounds);
        if (stage == 11) {
            // Traced: the grains reaching the pixel gathered once, row0.z
            // samples among them; the mean light over the developed film's.
            float pitch = params.halo.w;
            int count = any(traced) ? gather(vec2(at) * pitch, vec2(at + 1) * pitch, layers, traced, bounds, share,
                                             film_value(17.0).w > 0.5 && film_value(17.0).w < 1.5) : 0;
            if (!any(traced) || count > 128) {
                return vec4(1.0, 1.0, 1.0, 0.0);
            }
            uint samples = uint(params.row0.z + 0.5);
            vec3 mask = layers == 1 ? vec3(traced.x ? 1.0 : 0.0) : vec3(traced);
            vec3 light = vec3(0.0);
            for (uint k = 0u; k < samples; k++) {
                vec2 place = (vec2(at) + sample_place(uint(at.x), uint(at.y), k)) * pitch;
                vec3 dye = dye_at(count, place);
                vec3 amounts = mask * (base.rgb + (layers == 1 ? vec3(dye.r) : dye) - developed_now);
                light += pow(vec3(10.0), -clamp(slopes * amounts, -4.0, 4.0));
            }
            return vec4(light / float(samples), 1.0);
        }
        if (stage == 15) {
            // No grains traced yet: the developed film's light.
            return vec4(1.0, 1.0, 1.0, 0.0);
        }
        // Alpha 0: not traced after all (too many grains), or not yet.
        if (sums.a < 0.5) traced = bvec3(false);
        vec3 relative = any(traced) ? sums.rgb : vec3(1.0);
        vec3 read = mean - log(max(relative, vec3(1e-30))) / log(10.0) - grain_bias(effective, slopes, traced)
                  + drawn_grain(at, effective, slopes, traced, layers, share);
        vec3 d = mean + film_value(6.0).w * (read - mean);
        float slide = film_value(17.0).w;
        if (slide > 0.5 && slide < 1.5) {
            // Back to the slide table's reading (asinh-encoded light).
            vec3 light = pow(vec3(10.0), -d) * 256.0;
            d = log(light + sqrt(light * light + 1.0));
        }
        out_color = finish_density(d);
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
            return vec4(0.18 * pow(max(light_out, 0.0) / 0.18, v8.rgb) * film_value(10.0).rgb, 1.0);
        }
        vec4 v7 = film_value(7.0);
        vec3 floors = film_value(9.0).rgb;
        vec3 shown = 0.18 * pow(vec3(10.0), (d - unbias - v7.rgb) * v8.rgb);
        vec3 linear_light = (shown - v8.w * floors) / (1.0 - v8.w * floors / 0.18);
        vec3 scene = vec3(dot(film_value(11.0).rgb, linear_light), dot(film_value(12.0).rgb, linear_light), dot(film_value(13.0).rgb, linear_light));
        out_color = max(scene * film_value(10.0).rgb, 0.0);
    }
    return vec4(out_color, spent);
}
