// The develop, for a viewer: one photo drawn into a rectangle of the window with
// its settings applied, all in one pass. process.lucb is the same on the CPU,
// step for step; change both together.
//
//   image 1  the scene: camera RGB balanced as shot (raws) or linear sRGB (other
//            files), RGBA half floats
//   image 2  the tables (tables.lucb): row 0 tone, 1 hue bands, 2 curves, 3 values
//   image 3  the view table, for the ACES and Print views: 64³ display colors, 64 slices of
//            64×64 side by side, over a log2 shaper of 24 stops about 0.18
//            (view.lucb), read with tetrahedral interpolation. The Standard and
//            Linear views are computed here exactly as view.lucb does.
//   image 4  the film atlas (film.lucb), for whether film is on: then image 1 is
//            the filmed scene (film.frag), already in AP1 with its vignetting
//
// First the output position is mapped to the photo through the geometry's frame
// map (perspective, rotation, aspect, scale, crop to fit); outside the photo is
// black. Order: the matrix (white balance, camera color, exposure) into ACES
// AP1, scene linear; lens vignetting (with film, both are done on the negative
// by film.frag, which hands this the filmed scene); the tone curve on
// luminance, keeping each pixel's ratios; in Oklab vibrance and saturation, the Color Mixer, Color Grading and
// Black & White; the view transform to display-linear sRGB; Levels and Curves on
// encoded values; the vignette. The window's sRGB framebuffer encodes.
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

// The lens: vignetting corrected, then its veiling glare, an even light
// (lens.lucb's `veil`, in row0.w).
vec3 with_lens(vec3 c, vec2 uv, float aspect) {
    vec4 v = value(5.0);
    if (v.y > 0.0) {
        float start = v.z * 0.6;
        float t = clamp((radius(uv, aspect) - start) / (1.0 - start), 0.0, 1.0);
        c *= 1.0 + v.y * 2.0 * t * t;
    }
    return c + vec3(params.row0.w);
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

// The print and paper views, per pixel (view.lucb's `pack` lays their data in
// image 3): film_print.lucb's `projected` and film_paper.lucb's `printed`.
vec4 print_value(int row, int column) {
    return texelFetch(display_table, ivec2(column, row), 0);
}
// Layer `layer`'s dye at log H `log_h` on the print's or paper's curve.
float print_amount(int layer, float log_h) {
    vec4 range = print_value(2, 1);
    float place = clamp((log_h - range.x) / (range.y - range.x), 0.0, 1.0) * 1023.0;
    float below = min(floor(place), 1022.0);
    float t = place - below;
    return mix(print_value(0, int(below))[layer], print_value(0, int(below) + 1)[layer], t);
}
// What comes back where the dyes' density is `d`: once through a film; off a
// paper, by Williams and Clapper's reflection (film_print.lucb's `reflectance`).
float print_passed(float d, bool reflective) {
    if (!reflective) return pow(10.0, -d);
    float place = clamp(d / 6.0, 0.0, 1.0) * 599.0;
    float below = min(floor(place), 598.0);
    float t = place - below;
    return mix(print_value(1, 200 + int(below)).r, print_value(1, 201 + int(below)).r, t);
}
// Dye `amounts` (and a neutral density, silver) seen by the print's light: XYZ
// adapted to D65, white at Y = 1, its flare added (film_print.lucb's `seen`).
vec3 print_seen(vec3 amounts, float neutral) {
    bool reflective = print_value(2, 1).w > 0.5;
    vec3 sum = vec3(0.0);
    for (int at = 0; at < 81; at++) {
        float d = dot(amounts, print_value(1, at).rgb) + neutral;
        sum += print_value(1, 100 + at).rgb * print_passed(d, reflective);
    }
    vec4 white = print_value(2, 2);
    float flare = print_value(2, 1).z;
    vec3 lit = (sum + flare * white.xyz) * white.w;
    return vec3(dot(print_value(2, 3).xyz, lit), dot(print_value(2, 4).xyz, lit), dot(print_value(2, 5).xyz, lit));
}
// The enlarger's exposure for printing density `d` around `grey_at`
// (film_paper.lucb's `exposure`): Callier, the exposure set, flare.
float enlarged(float d, float grey_at, float filter_density) {
    vec4 e = print_value(2, 10);
    float log_e = grey_at - e.x * d + e.z - filter_density;
    return log(pow(10.0, log_e) * (1.0 - e.y) + e.y * pow(10.0, grey_at)) / log(10.0);
}
// A black-and-white paper's grade `grade`'s density over its least at `log_e`.
float paper_density(int grade, float log_e) {
    vec4 grid = print_value(2, 13);
    float count = print_value(2, 14).x;
    float place = clamp((log_e - grid.z) / grid.w, 0.0, count - 1.0);
    float below = min(floor(place), count - 2.0);
    float t = place - below;
    return mix(print_value(3 + grade, int(below)).r, print_value(3 + grade, int(below) + 1).r, t);
}
// CAM16 (luce_color.cam16, as view.lucb's `as_displayed`): `xyz` (white at
// Y = 1) as it looks where the print is seen (row 2, 15–17), shown as the color
// that looks the same on the display (18–20): the same lightness, hue and
// chroma (so the same alpha, J being the same).
const vec3 m16_x = vec3(0.401288, 0.650173, -0.051461);
const vec3 m16_y = vec3(-0.250268, 1.204414, 0.045854);
const vec3 m16_z = vec3(-0.002079, 0.048952, 0.953127);
const vec3 m16_inverse_x = vec3(1.862067855, -1.011254631, 0.149186775);
const vec3 m16_inverse_y = vec3(0.387526543, 0.621447442, -0.008973985);
const vec3 m16_inverse_z = vec3(-0.015841499, -0.034122938, 1.049964437);
vec3 cam_response(vec3 v) {
    vec3 m = pow(abs(v), vec3(0.42));
    return sign(v) * 400.0 * m / (m + 27.13);
}
vec3 cam_unresponse(vec3 adapted, float fl) {
    vec3 m = min(abs(adapted), vec3(399.99));
    return sign(adapted) * 100.0 / fl * pow(27.13 * m / (400.0 - m), vec3(1.0 / 0.42));
}
vec3 as_displayed(vec3 xyz) {
    vec4 s0 = print_value(2, 15), s1 = print_value(2, 16), s2 = print_value(2, 17);
    vec4 t0 = print_value(2, 18), t1 = print_value(2, 19), t2 = print_value(2, 20);
    vec3 v = xyz * 100.0;
    vec3 cone = vec3(dot(m16_x, v), dot(m16_y, v), dot(m16_z, v));
    vec3 adapted = cam_response(s0.w * s0.xyz * cone / 100.0);
    float a = adapted.x + (-12.0 * adapted.y + adapted.z) / 11.0;
    float b = (adapted.x + adapted.y - 2.0 * adapted.z) / 9.0;
    float u = (20.0 * adapted.x + 20.0 * adapted.y + 21.0 * adapted.z) / 20.0;
    float p2 = (40.0 * adapted.x + 20.0 * adapted.y + adapted.z) / 20.0;
    float hue = atan(b, a);
    float e_hue = 0.25 * (cos(hue + 2.0) + 3.8);
    // J / 100 under the print's viewing; alpha (C over √(J/100)).
    float j = pow(max(p2 * s1.x / s2.x, 0.0), s1.y * s1.z);
    if (j <= 0.0) return vec3(0.0);
    float t = 50000.0 / 13.0 * s1.w * s1.x * e_hue * length(vec2(a, b)) / (u + 0.305);
    float alpha = pow(t, 0.9) * s2.y;
    // Back under the display's.
    float t_back = pow(alpha / t2.y, 1.0 / 0.9);
    float p2_back = t2.x * pow(j, 1.0 / (t1.y * t1.z)) / t1.x;
    float p1 = e_hue * (50000.0 / 13.0) * t1.w * t1.x;
    float h_cos = cos(hue), h_sin = sin(hue);
    float gamma = 23.0 * (p2_back + 0.305) * t_back / (23.0 * p1 + 11.0 * t_back * h_cos + 108.0 * t_back * h_sin);
    float a_back = gamma * h_cos, b_back = gamma * h_sin;
    vec3 back = vec3(460.0 * p2_back + 451.0 * a_back + 288.0 * b_back,
                     460.0 * p2_back - 891.0 * a_back - 261.0 * b_back,
                     460.0 * p2_back - 220.0 * a_back - 6300.0 * b_back) / 1403.0;
    vec3 cone_back = cam_unresponse(back, t0.w) / t0.xyz;
    return vec3(dot(m16_inverse_x, cone_back), dot(m16_inverse_y, cone_back), dot(m16_inverse_z, cone_back)) / 100.0;
}
vec3 printed(vec3 c) {
    vec3 lifted = c * print_value(2, 9).y;
    vec4 printer = print_value(2, 0);
    vec3 shown;
    if (printer.w < 0.5) {
        // 2383 projected.
        vec3 negative = 0.6 * log(max(lifted, vec3(1e-6)) / 0.18) / log(10.0);
        vec3 amounts = vec3(print_amount(0, printer.x - negative.x), print_amount(1, printer.y - negative.y), print_amount(2, printer.z - negative.z));
        float kept = print_value(2, 9).x * max((amounts.x + amounts.y + amounts.z) / 3.0, 0.0);
        shown = print_seen(amounts, kept);
    } else if (printer.w < 1.5) {
        // A color paper, its filtration per layer.
        vec3 filters = print_value(2, 11).rgb;
        vec3 amounts;
        for (int layer = 0; layer < 3; layer++) {
            float d = 0.6 * log(max(lifted[layer], 1e-6) / 0.18) / log(10.0);
            amounts[layer] = print_amount(layer, enlarged(d, printer[layer], filters[layer]));
        }
        shown = print_seen(amounts, 0.0);
    } else {
        // A black-and-white paper: the grades around the chosen one.
        float luminance = dot(lifted, vec3(0.272228717, 0.674081766, 0.053689517));
        float d = 0.6 * log(max(luminance, 1e-6) / 0.18) / log(10.0);
        vec4 grades = print_value(2, 12);
        vec4 greys = print_value(2, 13);
        float low = paper_density(int(grades.x), enlarged(d, greys.x, 0.0));
        float high = paper_density(int(grades.y), enlarged(d, greys.y, 0.0));
        float reflectance = pow(10.0, -mix(low, high, grades.z));
        shown = reflectance * vec3(0.95047, 1.0, 1.08883);
    }
    shown = as_displayed(shown);
    vec3 rgb = vec3(dot(print_value(2, 6).xyz, shown), dot(print_value(2, 7).xyz, shown), dot(print_value(2, 8).xyz, shown));
    return clamp(rgb, 0.0, 1.0);
}

vec3 through_view(vec3 c) {
    if (params.color.z > 2.5) return printed(c);
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

// Whether film is on: the scene is then the filmed one (film.frag), its lens
// vignetting already applied, and the matrix the identity.
bool filmed() {
    return texture(film, vec2(7.5 / 1089.0, 36.5 / 37.0)).w > 0.5;
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
    if (!filmed()) c = with_lens(max(c, vec3(0.0)), source, aspect);
    c = with_tone(c);
    c = with_color(c);
    c = through_view(c);
    c = with_curves(c);
    c = with_vignette(c, uv, aspect);
    fragment_color = vec4(c, 1.0);
}
