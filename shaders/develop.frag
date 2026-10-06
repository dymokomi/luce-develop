// The develop, for a viewer: one photo drawn into a rectangle of the window with
// its settings applied, all in one pass.
//
//   image 1  the scene: camera RGB balanced as shot (raws) or linear sRGB (other
//            files), RGBA half floats
//   image 2  the tone table: 256 gains in stops (red) over luminance from 14
//            stops below middle grey to 10 above (tone.lucb)
//   image 3  the view table, for the ACES view: 64³ display colors, 64 slices of
//            64×64 side by side, over a log2 shaper of 24 stops about 0.18
//            (view.lucb), read with tetrahedral interpolation. The Standard and
//            Linear views are computed here exactly as view.lucb does.
//
// Order: the matrix (white balance, camera color, exposure) into ACES AP1, scene
// linear; the tone curve on luminance, keeping each pixel's ratios; saturation and
// vibrance in Oklab; the view transform to display-linear sRGB, which the window's
// sRGB framebuffer encodes.
#version 450
layout(location = 0) in vec4 vertex_color;
layout(location = 0) out vec4 fragment_color;
layout(push_constant) uniform Params {
    vec4 rect;      // where the image lies in the frame, in pixels: x, y, width, height
    vec4 row0;      // the matrix from the scene texture to AP1, by rows
    vec4 row1;
    vec4 row2;
    vec4 color;     // vibrance and saturation (-1..1), the view (0 ACES, 1 Standard, 2 Linear), unused
} params;
layout(set = 0, binding = 1) uniform sampler2D scene;
layout(set = 0, binding = 2) uniform sampler2D tone;
layout(set = 0, binding = 3) uniform sampler2D display_table;

const float lut_size = 64.0;
const float shaper_low = -12.0;
const float shaper_high = 12.0;
const vec3 ap1_luminance = vec3(0.272228717, 0.674081766, 0.053689517);
// AP1 (D60) to Oklab's LMS through XYZ adapted to D65, and back.
const mat3 to_lms = mat3(0.631694013, 0.270070163, 0.098790269, 0.348861603, 0.630951453, 0.185321549, 0.019335190, 0.099005298, 0.716367829);
const mat3 from_lms = mat3(2.068802739, -0.876328522, -0.058594228, -1.175172287, 2.149760160, -0.394073107, 0.106575960, -0.273454027, 1.451975109);
const mat3 lms_to_lab = mat3(0.2104542553, 1.9779984951, 0.0259040371, 0.7936177850, -2.4285922050, 0.7827717662, -0.0040720468, 0.4505937099, -0.8086757660);
const mat3 lab_to_lms = mat3(1.0, 1.0, 1.0, 0.3963377774, -0.1055613458, -0.0894841775, 0.2158037573, -0.0638541728, -1.2914855480);

vec3 cube_root(vec3 v) { return sign(v) * pow(abs(v), vec3(1.0 / 3.0)); }

vec3 with_tone(vec3 c) {
    float y = dot(c, ap1_luminance);
    if (y <= 1e-10) return c;
    float l = log2(y / 0.18);
    float u = clamp((l + 14.0) / 24.0, 0.0, 1.0) * (255.0 / 256.0) + 0.5 / 256.0;
    return c * exp2(texture(tone, vec2(u, 0.5)).r);
}

vec3 with_color(vec3 c) {
    float vibrance = params.color.x, saturation = params.color.y;
    if (vibrance == 0.0 && saturation == 0.0) return c;
    vec3 lab = lms_to_lab * cube_root(to_lms * c);
    float chroma = length(lab.yz);
    // Vibrance moves the colors with little chroma most, and the vivid ones hardly.
    float scale = (1.0 + saturation) * (1.0 + vibrance * (1.0 - smoothstep(0.0, 0.2, chroma)));
    lab.yz *= max(scale, 0.0);
    vec3 lms = lab_to_lms * lab;
    return from_lms * (lms * lms * lms);
}

vec3 shaped(vec3 c) {
    vec3 stops = log2(max(c, vec3(1e-12)) / 0.18);
    return clamp((stops - shaper_low) / (shaper_high - shaper_low), 0.0, 1.0);
}

// AP1 (D60) to linear sRGB (D65), Bradford-adapted: view.lucb's working_to_display.
const mat3 to_display = mat3(1.705050993, -0.130256418, -0.024003357, -0.621792121, 1.140804737, -0.128968976, -0.083258872, -0.010548319, 1.152972333);

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

void main() {
    vec2 uv = (gl_FragCoord.xy - params.rect.xy) / params.rect.zw;
    vec3 camera = texture(scene, uv).rgb;
    vec3 c = vec3(dot(params.row0.xyz, camera), dot(params.row1.xyz, camera), dot(params.row2.xyz, camera));
    c = with_tone(max(c, vec3(0.0)));
    c = with_color(c);
    fragment_color = vec4(through_view(c), 1.0);
}
