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

The develop works in scene-linear ACES AP1. A raw is developed once by luce-raw
with `camera` set (balanced as shot, no matrix). A new white balance is then
just a matrix built from luce-raw's `rendering`, so white balance and exposure
cost nothing to change. The stages, in order:

1. Matrix: white balance, camera color and exposure into AP1.
2. Tone (`tone`): contrast, highlights, shadows, whites and blacks as one gain in
   stops over luminance, applied to all three channels so hues hold.
3. Color: vibrance and saturation in Oklab.
4. View (`view`): Standard, a neutral filmic curve with highlights running to
   white, or Linear. ACES 2.0 comes with luce-color.

- `settings.Settings` holds every parameter. `defaults()`, `parse(text)` and
  `encode(settings)` convert to and from the short text form
  ("exposure=0.7;contrast=20") that catalogs store.
- `scene.open(path, edge)` loads a photo at a viewer's size.
- `renderer.start()` runs on the GPU for viewers: `open(path, edge)` loads on its
  own thread, `poll()` takes in what loaded, `set_settings`, then
  `draw(target, x, y, w, h)` every frame, one pass of `shaders/develop.frag`.
- `process.render(scene, settings)` is the same develop on the CPU, with the
  view evaluated exactly instead of through a table. Export uses it.

## Tests

`./test.sh` runs the module tests and previews the sample raws in
`../luce-raw/build/samples` when they are present.
