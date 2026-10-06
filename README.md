# luce-develop

Photo development for Luce, written in Luce Base. It reads camera raws (through
[luce-raw](../luce-raw)) and JPEG, PNG, TIFF and HEIC files, makes quick upright
previews for libraries and viewers, and will develop photos through a
scene-linear pipeline: white balance, exposure, tone, Oklab color tools and the
ACES 2.0 view transform. A GPU renderer serves viewers and a CPU path serves
export. luced-photo is its first user; the design is in
[luced-photo's docs/DESIGN.md](../luced-photo/docs/DESIGN.md).

## Sources (`source`)

```luce
from luce_develop import source

let picture = source.open_preview("/photos/DSCF1234.RAF", 512)   # Luce: an owned Picture
```

- `kind(data) -> Kind`: `raw`, `jpeg`, `png`, `tiff`, `heic` or `unknown`, by the bytes.
- `is_photo_name(name)`: whether an importer should look at a file, by its extension.
- `preview(data, long_edge, orientation = 0) -> Picture`: a display-ready preview,
  upright, at most `long_edge` on its longer side. For a raw it is the largest
  embedded JPEG. When a raw has none, or only a thumbnail much smaller than
  asked for (Leica's DNGs carry 160 px), it is a half-size develop instead. A
  JPEG decodes at 1/2 to 1/8 size from its DCT. PNG, TIFF and HEIC decode whole.
  `orientation` 0 uses what the file states where luce-develop reads it.
- `open_preview(path, long_edge, orientation = 0)`: the same, from a file, for Luce.

## Pictures (`picture`)

`Picture` is 8-bit RGBA (sRGB, straight alpha). `shrunk(long_edge)` averages in
linear light, `oriented(exif)` turns it upright, and `save_jpeg(path, quality)`
writes it out. `width()`, `height()` and `pixels()` read it from Luce.

## Developing (`settings`, `scene`, `renderer`, `process`, `view`)

Before anything else, the output position is mapped onto the photo by the
geometry (`geometry`). That covers perspective as the camera turned back
(roll, tilt, pan through a 28 mm-equivalent lens), aspect, scale, and crop to
fit. Guides drawn on the photo that should be vertical or horizontal solve for
the turn (Nelder–Mead, after darktable's ashift). `geometry.frame_map` is the
one matrix the shader and the CPU path both sample through.

The develop works in scene-linear ACES AP1. A raw is developed once by luce-raw
with `camera` set (balanced as shot, no matrix). A new white balance is then just
a matrix built from luce-raw's `rendering`. The stages, in the order the shader
(`shaders/develop.frag`) and the CPU path (`process`) run them:

1. The matrix: white balance, camera color and exposure.
2. Lens vignetting correction.
3. Tone: contrast, highlights, shadows, whites and blacks as one gain over
   luminance, so hues hold (`tone`).
4. In Oklab: vibrance and saturation; the Color Mixer (eight hue bands' hue,
   saturation and luminance); Color Grading (shadows, midtones, highlights and
   global wheels, balance, blending); Black & White (hue weights, tint).
5. The view: ACES 2.0 SDR (luce-color), lifted one stop so photographs land as
   a camera renders them, which is the default; Standard, a neutral filmic curve;
   or Linear.
6. Levels and Curves (all channels, R, G, B, luma) on the display's encoded values.
7. The vignette and grain.

- **Parameters.** All 76 are in `tools/parameters.py`, which generates
  `src/parameters.lucb`: each one's name, label, Properties section, range,
  default and decimals.
- **Tables.** Everything per hue, per tone or per curve is built into one 1024×4
  table (`tables`), which both paths read with the same filtering.
- **Settings for Base.** `settings.Settings` holds the values and five curves.
  `parse(text)` and `text_of` read and write the short text form that catalogs
  store ("exposure=0.7;curve_rgb=0,0 0.3,0.25 1,1").
- **Looks for Luce.** `settings.look(text)` returns a `Look` with
  `get`/`set(name)`, `set_curve`, `text()` and `load(text)`. `name_of(i)`,
  `label_of(i)`, `section_of(i)` and the rest describe the table, so an
  application can build its controls from it.
- **Scenes.** `scene.open(path, edge)` loads a photo at a viewer's size.
- **The renderer (GPU, for viewers).**
  - `open(path, edge)` loads on the renderer's own thread, and `poll()` takes in
    what loaded.
  - `set_settings(settings)` changes the develop.
  - `draw(target, x, y, w, h)` draws every frame, as one pass.
- **The CPU path.** `process.render(scene, settings)` and `render16` are the
  same develop on the CPU, rows spread over every processor, with the view
  evaluated exactly.
- **Export.** `export.export(source, settings, target, format, quality, edge, space)`
  develops at full size (or a long edge) for sRGB or Display P3 (`space`; the
  view renders for that display's primaries) and writes JPEG or 16-bit PNG with
  the matching ICC profile (luce-color's `icc.write_named_profile`): about
  2 s for a 24 MP raw, demosaic included. `scene.open(path, 0)` is a full-size
  scene.
- **Parity.** `tests/parity.lucb` holds the GPU to the CPU for every tool. Both
  paths agree to within a level on average, and to 3 levels for Standard and
  Linear.

## Tests

`./test.sh` runs the module tests and previews the sample raws in
`../luce-raw/build/samples` when they are present.
