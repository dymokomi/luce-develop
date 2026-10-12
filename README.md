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
3. Film, when a stock is chosen: the scene exposed onto a color negative,
   developed, and scanned back to AP1 (`film`, below).
4. Tone: contrast, highlights, shadows, whites and blacks as one gain over
   luminance, so hues hold (`tone`).
5. In Oklab: vibrance and saturation; the Color Mixer (eight hue bands' hue,
   saturation and luminance); Color Grading (shadows, midtones, highlights and
   global wheels, balance, blending); Black & White (hue weights, tint).
6. The view: ACES 2.0 SDR (luce-color), lifted one stop so photographs land as
   a camera renders them, which is the default; Standard, a neutral filmic curve;
   or Linear.
7. Levels and Curves (all channels, R, G, B, luma) on the display's encoded values.
8. The vignette and grain.

- **Parameters.** All 85 are in `tools/parameters.py`, which generates
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
- **Parity.** `tests/parity/main.lucb` holds the GPU to the CPU for every tool. Both
  paths agree to within a level on average, and to 3 levels for Standard and
  Linear.

## Film (`film`)

The Film section turns the develop into a color negative and its transfer, the
way television shot on film reached the screen: Kodak negative, developed,
scanned on a telecine and graded on tape. Film works on the negative, at the
scene's own size and before the develop, so the tone and color tools grade the
scan and the view stays the only tone scale. Everything comes from the stock's
datasheet (`film_stocks.lucb`, modelled by `film_model.lucb`):

1. **Exposure.** A color gets a smooth spectrum (luce-color's `spectral`
   upsampler, under the stock's balance light, 3200 K for tungsten stocks), and
   each layer is exposed to it through its spectral sensitivity. Middle grey
   lands on the stock's normal exposure; Film Exposure over- or underexposes
   the negative, and the transfer brings grey back.
2. **Light in the emulsion.** Each layer's exposure scatters (an exponential,
   the emulsion's classic spread of light); Halation adds light that came back
   off the base, mostly to the red layer, weak behind rem-jet backing.
3. **Development.** The characteristic curves (Status M) are unmixed into
   cyan, magenta and yellow dye amounts. Developing releases inhibitor (DIR
   couplers) that diffuses and holds development back nearby: in the layer
   itself, which develops edges harder, and in its neighbours, which saturates
   colors and shifts hues (Interimage). The curves are corrected so neutrals
   keep the datasheet's densities. Each layer's scatter and self-inhibition and
   the inhibitor's spread are fitted to the stock's MTF curves, within about
   20% everywhere (`film_model.lucb`).
4. **Grain.** The developed negative is made of dye clouds about 8 µm apart:
   each takes the film's density at its own place plus its grain (how many of
   its silver grains developed, which varies as the stock's rms granularity
   says it does at that density), and every point is the clouds around it
   blended. Nothing finer than the clouds survives, and the grain follows the
   image. Calibrated so a 48 µm aperture over an even patch reads Kodak's
   number; Format sets how much negative a pixel covers.
5. **Scan.** The dyes' spectral density over D-min (the orange mask removed),
   inverted per channel at grey, the clear negative's floor taken out by Black,
   a matrix fitted per stock back to AP1, then the telecine's Warmth, Tint and
   Contrast.

The passes on the negative (`film_passes.lucb` on the CPU, `film_gpu.lucb` and
`shaders/film.frag` on the GPU) are: expose, scatter (across, down),
halation (across, down), the neutral development, the inhibitor's spread
(across, down), and develop as dye clouds with their grain, and scan. The renderer runs them when the
photo or the settings change and draws the filmed scene; export runs them at
full size (about 18 s for a 48-megapixel raw on the CPU, demosaic included).

Stocks, the tungsten negatives American television shot through the 1990s:
Kodak EXR 500T 5298 and EXR 200T 5293, Vision 500T 5279 and Vision 320T 5277.
5298's curves were read off the raster graphs of Kodak's TI2082 datasheet
(`digitize_ti2082.py`); its sheet has no per-dye spectra or marked normal
exposure, so it takes 5293's dye shapes and 5279's grey (the same speed). The
others were read exactly from their datasheets' vector graphs
(`read_vector_sheets.py`). Each stock's grey is the 18% grey card Kodak marks
on its curves. `dev/film` holds the readings, the scripts that took them, and
`make_stocks.py`, which writes `film_stocks.lucb`. Kodak publishes nothing above log H 0, no interimage numbers and no
Status M tables: the shoulder, the interimage matrix and the densitometer's
bands (Gaussians at Status M's band centres) are estimates, labelled where
they are made. The model builds in about 0.2 s when a stock is first chosen;
after that a settings change only recomputes the development and the timing.

## Tests

`luc test` runs the module tests and the test programs in `tests/<name>/`. One of
those is `tests/parity`, which holds the GPU to the CPU on a Leica DNG, a Fuji
X-Trans RAF and a Sony ARW from `../luce-raw/build/samples`. It is skipped when
those samples or a GPU are not there; luce-raw's tests fetch the samples.
