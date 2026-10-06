// The develop, for a viewer: one photo drawn into a rectangle of the window with
// its settings applied, all in one pass.
//
//   image 1  the scene: camera RGB balanced as shot (raws) or linear sRGB (other
//            files), RGBA half floats
//   image 2  the tone table: 256 gains in stops (red) over luminance from 14
//            stops below middle grey to 10 above (tone.lucb)
//   image 3  the view table: 64³ display colors, 64 slices of 64×64 side by side,
//            over a log2 shaper of 24 stops about 0.18 (view.lucb)
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
    vec4 color;     // vibrance and saturation (-1..1), unused, unused
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

vec3 through_view(vec3 c) {
    vec3 s = shaped(c) * (lut_size - 1.0);
    float slice = floor(s.b);
    float next = min(slice + 1.0, lut_size - 1.0);
    float t = s.b - slice;
    vec2 at = vec2(s.r + 0.5, s.g + 0.5);
    vec3 low = texture(display_table, vec2((slice * lut_size + at.x) / (lut_size * lut_size), at.y / lut_size)).rgb;
    vec3 high = texture(display_table, vec2((next * lut_size + at.x) / (lut_size * lut_size), at.y / lut_size)).rgb;
    return mix(low, high, t);
}

void main() {
    vec2 uv = (gl_FragCoord.xy - params.rect.xy) / params.rect.zw;
    vec3 camera = texture(scene, uv).rgb;
    vec3 c = vec3(dot(params.row0.xyz, camera), dot(params.row1.xyz, camera), dot(params.row2.xyz, camera));
    c = with_tone(max(c, vec3(0.0)));
    c = with_color(c);
    fragment_color = vec4(through_view(c), 1.0);
}
