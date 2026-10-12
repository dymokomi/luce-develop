// The develop, for a viewer: one photo drawn into a rectangle of the window with
// its settings applied, all in one pass. process.lucb is the same on the CPU,
// step for step; change both together.
//
//   image 1  the scene: camera RGB balanced as shot (raws) or linear sRGB (other
//            files), RGBA half floats
//   image 2  the tables (tables.lucb): row 0 tone, 1 hue bands, 2 curves, 3 values
//   image 3  the view table, for the ACES view: 64³ display colors, 64 slices of
//            64×64 side by side, over a log2 shaper of 24 stops about 0.18
//            (view.lucb), read with tetrahedral interpolation. The Standard and
//            Linear views are computed here exactly as view.lucb does.
//   image 4  the film atlas (film.lucb): the stock's scan, spectral exposure grid,
//            development curves, granularity and values, RGBA half floats
//
// First the output position is mapped to the photo through the geometry's frame
// map (perspective, rotation, aspect, scale, crop to fit); outside the photo is
// black. Order: the matrix (white balance, camera color, exposure) into ACES AP1, scene
// linear; lens vignetting; film (film.lucb: exposed, developed and scanned
// back to AP1, when a stock is chosen); the tone curve on luminance, keeping each pixel's
// ratios; in Oklab vibrance and saturation, the Color Mixer, Color Grading and
// Black & White; the view transform to display-linear sRGB; Levels and Curves on
// encoded values; the vignette and grain. The window's sRGB framebuffer encodes.
#version 450
layout(location = 0) in vec4 vertex_color;
layout(location = 0) out vec4 fragment_color;
layout(push_constant) uniform Params {
    vec4 rect;      // where the image lies in the frame, in pixels: x, y, width, height
    vec4 row0;      // the matrix from the scene texture to AP1, by rows
    vec4 row1;
    vec4 row2;
    vec4 color;     // vibrance, saturation (-1..1), the view (0 ACES, 1 Standard, 2 Linear), the image's aspect
    vec4 map0;      // geometry.lucb's frame map, by rows: output (0..1) to source (0..1), homogeneous
    vec4 map1;
    vec4 map2;
} params;
layout(set = 0, binding = 1) uniform sampler2D scene;
layout(set = 0, binding = 2) uniform sampler2D tables;
layout(set = 0, binding = 3) uniform sampler2D display_table;
layout(set = 0, binding = 4) uniform sampler2D film;

const float lut_size = 64.0;
const float shaper_low = -12.0;
const float shaper_high = 12.0;
const float table_width = 1024.0;
const vec3 ap1_luminance = vec3(0.272228717, 0.674081766, 0.053689517);
// AP1 (D60) to Oklab's LMS through XYZ adapted to D65, and back.
const mat3 to_lms = mat3(0.631694013, 0.270070163, 0.098790269, 0.348861603, 0.630951453, 0.185321549, 0.019335190, 0.099005298, 0.716367829);
const mat3 from_lms = mat3(2.068802739, -0.876328522, -0.058594228, -1.175172287, 2.149760160, -0.394073107, 0.106575960, -0.273454027, 1.451975109);
const mat3 lms_to_lab = mat3(0.2104542553, 1.9779984951, 0.0259040371, 0.7936177850, -2.4285922050, 0.7827717662, -0.0040720468, 0.4505937099, -0.8086757660);
const mat3 lab_to_lms = mat3(1.0, 1.0, 1.0, 0.3963377774, -0.1055613458, -0.0894841775, 0.2158037573, -0.0638541728, -1.2914855480);
// AP1 (D60) to linear sRGB (D65), Bradford-adapted: view.lucb's working_to_display.
const mat3 to_display = mat3(1.705050993, -0.130256418, -0.024003357, -0.621792121, 1.140804737, -0.128968976, -0.083258872, -0.010548319, 1.152972333);
const float pi = 3.14159265358979;

// A table row at u (0..1), linearly between texel centers.
vec4 row(float which, float u) {
    return texture(tables, vec2((clamp(u, 0.0, 1.0) * (table_width - 1.0) + 0.5) / table_width, (which + 0.5) / 4.0));
}
// Texel `at` of the values row.
vec4 value(float at) {
    return texture(tables, vec2((at + 0.5) / table_width, 3.5 / 4.0));
}

vec3 cube_root(vec3 v) { return sign(v) * pow(abs(v), vec3(1.0 / 3.0)); }
float smooth01(float edge0, float edge1, float x) { float t = clamp((x - edge0) / (edge1 - edge0), 0.0, 1.0); return t * t * (3.0 - 2.0 * t); }

// The distance from the image's middle, 1 at the corners.
float radius(vec2 uv, float aspect) {
    vec2 p = (uv - 0.5) * 2.0 * vec2(aspect, 1.0);
    return length(p) / length(vec2(aspect, 1.0));
}

vec3 with_lens(vec3 c, vec2 uv, float aspect) {
    vec4 v = value(5.0);
    if (v.y <= 0.0) return c;
    float start = v.z * 0.6;
    float t = clamp((radius(uv, aspect) - start) / (1.0 - start), 0.0, 1.0);
    return c * (1.0 + v.y * 2.0 * t * t);
}

vec3 with_tone(vec3 c) {
    float y = dot(c, ap1_luminance);
    if (y <= 1e-10) return c;
    return c * exp2(row(0.0, (log2(y / 0.18) + 14.0) / 24.0).r);
}

vec3 with_color(vec3 c) {
    float y = dot(c, ap1_luminance);
    if (y <= 1e-10) return c;
    // Color Grading's tonal ranges, in stops from grey after tone.
    vec4 shape = value(4.0);
    float s = log2(y / 0.18);
    float width = 1.0 + 3.0 * shape.y;
    float low = -2.0 + 2.0 * shape.x, high = 2.0 + 2.0 * shape.x;
    float w_shadows = 1.0 - smooth01(low - width, low + width, s);
    float w_highlights = smooth01(high - width, high + width, s);
    float w_midtones = max(0.0, 1.0 - w_shadows - w_highlights);
    vec3 lab = lms_to_lab * cube_root(to_lms * c);
    float chroma = length(lab.yz);
    float hue = fract(atan(lab.z, lab.y) / (2.0 * pi) + 1.0);
    // Vibrance moves the colors with little chroma most, and the vivid ones hardly.
    float scale = (1.0 + params.color.y) * (1.0 + params.color.x * (1.0 - smooth01(0.0, 0.2, chroma)));
    // The Color Mixer: this hue's band shift, saturation and luminance.
    vec4 band = row(1.0, hue);
    float turned = 2.0 * pi * band.x;
    vec2 ab = vec2(cos(turned) * lab.y - sin(turned) * lab.z, sin(turned) * lab.y + cos(turned) * lab.z);
    ab *= max(scale * band.y, 0.0);
    float lightness = lab.x * (1.0 + (band.z - 1.0) * smooth01(0.0, 0.1, chroma));
    // Color Grading.
    vec4 g0 = value(0.0), g1 = value(1.0), g2 = value(2.0), g3 = value(3.0);
    ab += w_shadows * g0.xy + w_midtones * g1.xy + w_highlights * g2.xy + g3.xy;
    lightness *= (w_shadows * g0.z + w_midtones * g1.z + w_highlights * g2.z) * g3.z;
    // Black & White: hues counted toward the grey by their weights, then the tint.
    if (shape.z > 0.5) {
        lightness *= max(0.0, 1.0 + band.w * chroma * 3.0);
        ab = vec2(shape.w, value(5.0).x);
    }
    vec3 lms = lab_to_lms * vec3(lightness, ab);
    return from_lms * (lms * lms * lms);
}

vec3 shaped(vec3 c) {
    vec3 stops = log2(max(c, vec3(1e-12)) / 0.18);
    return clamp((stops - shaper_low) / (shaper_high - shaper_low), 0.0, 1.0);
}

vec3 lut_at(float r, float g, float b) {
    return texture(display_table, vec2((b * lut_size + r + 0.5) / (lut_size * lut_size), (g + 0.5) / lut_size)).rgb;
}

// The view table at shaper coordinates, tetrahedrally: the cube's diagonal and
// the two corners on the path the coordinates' order picks.
vec3 through_table(vec3 c) {
    vec3 s = shaped(c) * (lut_size - 1.0);
    vec3 base = min(floor(s), vec3(lut_size - 2.0));
    vec3 f = s - base;
    vec3 c000 = lut_at(base.r, base.g, base.b);
    vec3 c111 = lut_at(base.r + 1.0, base.g + 1.0, base.b + 1.0);
    vec3 result;
    if (f.r >= f.g) {
        if (f.g >= f.b) {
            vec3 c100 = lut_at(base.r + 1.0, base.g, base.b), c110 = lut_at(base.r + 1.0, base.g + 1.0, base.b);
            result = c000 + f.r * (c100 - c000) + f.g * (c110 - c100) + f.b * (c111 - c110);
        } else if (f.r >= f.b) {
            vec3 c100 = lut_at(base.r + 1.0, base.g, base.b), c101 = lut_at(base.r + 1.0, base.g, base.b + 1.0);
            result = c000 + f.r * (c100 - c000) + f.b * (c101 - c100) + f.g * (c111 - c101);
        } else {
            vec3 c001 = lut_at(base.r, base.g, base.b + 1.0), c101 = lut_at(base.r + 1.0, base.g, base.b + 1.0);
            result = c000 + f.b * (c001 - c000) + f.r * (c101 - c001) + f.g * (c111 - c101);
        }
    } else {
        if (f.b >= f.g) {
            vec3 c001 = lut_at(base.r, base.g, base.b + 1.0), c011 = lut_at(base.r, base.g + 1.0, base.b + 1.0);
            result = c000 + f.b * (c001 - c000) + f.g * (c011 - c001) + f.r * (c111 - c011);
        } else if (f.b >= f.r) {
            vec3 c010 = lut_at(base.r, base.g + 1.0, base.b), c011 = lut_at(base.r, base.g + 1.0, base.b + 1.0);
            result = c000 + f.g * (c010 - c000) + f.b * (c011 - c010) + f.r * (c111 - c011);
        } else {
            vec3 c010 = lut_at(base.r, base.g + 1.0, base.b), c110 = lut_at(base.r + 1.0, base.g + 1.0, base.b);
            result = c000 + f.g * (c010 - c000) + f.r * (c110 - c010) + f.b * (c111 - c110);
        }
    }
    return result;
}

// The Standard view (view.lucb): gamut pulled to luminance, a filmic curve on
// the largest component keeping ratios, highlights whitening past scene white.
vec3 standard(vec3 c) {
    c = to_display * c;
    float y = dot(c, vec3(0.2126, 0.7152, 0.0722));
    if (y <= 0.0) return vec3(0.0);
    float least = min(c.r, min(c.g, c.b));
    if (least < 0.0) c = y + (c - y) * (y / (y - least));
    float norm = max(c.r, max(c.g, c.b));
    float toned = min(1.0, 1.05 * pow(norm / (norm + 0.3628), 1.3));
    float whiten = pow(clamp(log2(norm) / 5.0, 0.0, 1.0), 1.5);
    vec3 kept = c * (toned / norm);
    return clamp(kept + (vec3(toned) - kept) * whiten, 0.0, 1.0);
}

vec3 through_view(vec3 c) {
    if (params.color.z > 1.5) return clamp(to_display * c, 0.0, 1.0);
    if (params.color.z > 0.5) return standard(c);
    return through_table(c);
}

vec3 encode(vec3 c) { return mix(c * 12.92, 1.055 * pow(max(c, vec3(0.0)), vec3(1.0 / 2.4)) - 0.055, step(0.0031308, c)); }
vec3 decode(vec3 c) { return mix(c / 12.92, pow((c + 0.055) / 1.055, vec3(2.4)), step(0.04045, c)); }

// Levels and Curves, on encoded values: each channel through its row, then the
// luma curve as a ratio.
vec3 with_curves(vec3 c) {
    vec3 e = encode(clamp(c, 0.0, 1.0));
    e = vec3(row(2.0, e.r).r, row(2.0, e.g).g, row(2.0, e.b).b);
    float luma = dot(e, vec3(0.2126, 0.7152, 0.0722));
    if (luma > 1e-5) e = min(e * (row(2.0, luma).a / luma), vec3(1.0));
    return decode(e);
}

vec3 with_vignette(vec3 c, vec2 uv, float aspect) {
    vec4 v5 = value(5.0), v6 = value(6.0);
    float amount = v5.w;
    if (amount == 0.0) return c;
    // Roundness: -1 follows the frame's shape, 1 a circle.
    float stretch = mix(1.0, aspect, (v6.y + 1.0) * 0.5);
    vec2 p = (uv - 0.5) * 2.0 * vec2(stretch, 1.0);
    float r = length(p) / length(vec2(stretch, 1.0));
    float start = v6.x;
    float edge = smooth01(start, start + max(v6.z, 0.02) * (1.2 - start), r);
    if (amount < 0.0) return c * (1.0 + amount * edge);
    return c + (vec3(1.0) - c) * (amount * edge);
}

// A hash of a cell to 0..1, the same as process.lucb's.
float hashed(uvec2 p) {
    uint x = p.x * 1664525u + p.y * 1013904223u;
    x ^= x >> 16; x *= 0x7feb352du; x ^= x >> 15; x *= 0x846ca68bu; x ^= x >> 16;
    return float(x >> 8) / 16777216.0;
}

vec3 with_grain(vec3 c, vec2 uv, float aspect) {
    vec4 v6 = value(6.0), v7 = value(7.0);
    float amount = v6.w;
    if (amount <= 0.0) return c;
    // Grain is the image's own, the same at any display size: 1500 cells high
    // at the finest size, 300 at the coarsest.
    vec2 at = uv * vec2(aspect, 1.0) * (1500.0 / (1.0 + 4.0 * v7.x));
    uvec2 cell = uvec2(floor(at));
    vec2 f = at - floor(at);
    f = f * f * (3.0 - 2.0 * f);
    float smooth_noise = mix(mix(hashed(cell), hashed(cell + uvec2(1u, 0u)), f.x), mix(hashed(cell + uvec2(0u, 1u)), hashed(cell + uvec2(1u, 1u)), f.x), f.y);
    float rough_noise = hashed(cell * 7u + uvec2(3u, 5u));
    float noise = mix(smooth_noise, rough_noise, v7.y * 0.5) * 2.0 - 1.0;
    float luma = dot(encode(clamp(c, 0.0, 1.0)), vec3(0.2126, 0.7152, 0.0722));
    return max(c * (1.0 + amount * 0.6 * noise * 4.0 * luma * (1.0 - luma)), 0.0);
}

// Film: film.lucb's develop, step for step, reading its atlas.
const float film_width = 1089.0;
const float film_rows = 85.0;
const float film_lut = 33.0;
const float film_grid = 48.0;

vec3 film_texels(float x, float y) {
    return texture(film, vec2((x + 0.5) / film_width, (y + 0.5) / film_rows)).rgb;
}
vec4 film_value(float at) {
    return texture(film, vec2((at + 0.5) / film_width, 84.5 / film_rows));
}
// A curve row at log H, all three channels at that place.
vec3 film_along(float row, float log_h) {
    return film_texels(clamp((log_h + 4.5) / 7.0, 0.0, 1.0) * 1023.0, row);
}
vec3 film_scan(vec3 a, float top) {
    vec3 s = clamp(a / top, 0.0, 1.0) * (film_lut - 1.0);
    float slice = min(floor(s.b), film_lut - 2.0);
    vec3 near_slice = film_texels(slice * film_lut + s.r, s.g);
    vec3 far_slice = film_texels((slice + 1.0) * film_lut + s.r, s.g);
    return mix(near_slice, far_slice, s.b - slice);
}
float film_noise(vec2 p, uint seed) {
    uvec2 cell = uvec2(floor(p)) + seed * uvec2(7919u, 104729u);
    vec2 f = p - floor(p);
    f = f * f * (3.0 - 2.0 * f);
    float top = mix(hashed(cell), hashed(cell + uvec2(1u, 0u)), f.x);
    float bottom = mix(hashed(cell + uvec2(0u, 1u)), hashed(cell + uvec2(1u, 1u)), f.x);
    return mix(top, bottom, f.y) * 2.0 - 1.0;
}

vec3 with_film(vec3 c, vec2 uv, float aspect, float width) {
    vec4 v7 = film_value(7.0);
    if (v7.w < 0.5) return c;
    vec3 xyz = vec3(dot(film_value(0.0).rgb, c), dot(film_value(1.0).rgb, c), dot(film_value(2.0).rgb, c));
    float sum = xyz.x + xyz.y + xyz.z;
    vec3 exposure = vec3(1e-8);
    if (sum > 1e-12 && xyz.y > 1e-12) {
        vec2 g = clamp(vec2(xyz.x / sum / 0.8, xyz.y / sum / 0.9), 0.0, 1.0) * (film_grid - 1.0);
        exposure = film_texels(g.x, 33.0 + g.y) * xyz.y;
    }
    vec4 v6 = film_value(6.0);
    vec3 log_h = log(max(exposure / 0.18, vec3(1e-8))) / log(10.0) + v6.x;
    vec3 first = vec3(film_along(81.0, log_h.r).r, film_along(81.0, log_h.g).g, film_along(81.0, log_h.b).b);
    vec3 effective = log_h - vec3(dot(film_value(3.0).rgb, first), dot(film_value(4.0).rgb, first), dot(film_value(5.0).rgb, first));
    vec3 amounts = vec3(film_along(82.0, effective.r).r, film_along(82.0, effective.g).g, film_along(82.0, effective.b).b);
    if (v6.w > 0.0) {
        float cell = max(8.0, v6.z / width);
        vec2 p = vec2(uv.x * v6.z, uv.y * v6.z / aspect) / cell;
        float scale = v6.w * 80.0 / cell;
        vec3 sigma = vec3(film_along(83.0, effective.r).r, film_along(83.0, effective.g).g, film_along(83.0, effective.b).b);
        amounts += vec3(film_noise(p, 0u), film_noise(p, 1u), film_noise(p, 2u)) * sigma * scale;
    }
    vec3 d = film_scan(amounts, v6.y);
    vec4 v8 = film_value(8.0);
    vec3 floors = film_value(9.0).rgb;
    vec3 shown = 0.18 * pow(vec3(10.0), (d - v7.rgb) * v8.rgb);
    vec3 linear_light = (shown - v8.w * floors) / (1.0 - v8.w * floors / 0.18);
    vec3 scene = vec3(dot(film_value(11.0).rgb, linear_light), dot(film_value(12.0).rgb, linear_light), dot(film_value(13.0).rgb, linear_light));
    return max(scene * film_value(10.0).rgb, 0.0);
}

void main() {
    vec2 uv = (gl_FragCoord.xy - params.rect.xy) / params.rect.zw;
    float aspect = params.color.w;
    vec3 mapped = vec3(dot(params.map0.xyz, vec3(uv, 1.0)), dot(params.map1.xyz, vec3(uv, 1.0)), dot(params.map2.xyz, vec3(uv, 1.0)));
    vec2 source = mapped.xy / mapped.z;
    if (mapped.z <= 0.0 || any(lessThan(source, vec2(0.0))) || any(greaterThan(source, vec2(1.0)))) {
        fragment_color = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }
    vec3 camera = texture(scene, source).rgb;
    vec3 c = vec3(dot(params.row0.xyz, camera), dot(params.row1.xyz, camera), dot(params.row2.xyz, camera));
    c = with_lens(max(c, vec3(0.0)), source, aspect);
    c = with_film(c, uv, aspect, params.rect.z);
    c = with_tone(c);
    c = with_color(c);
    c = through_view(c);
    c = with_curves(c);
    c = with_vignette(c, uv, aspect);
    c = with_grain(c, uv, aspect);
    fragment_color = vec4(c, 1.0);
}
