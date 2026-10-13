# Rajkowski & Nowak 1999: digitized edge profiles

## Source
- B. Rajkowski, P. Nowak, "Numerical investigation of sharpness in photographic layers containing DIR compounds", Optica Applicata 29(3), 275–283 (1999).
- PDF: https://dbc.wroc.pl/Content/40473/PDF/optappl_2903p275.pdf. Saved to `download/paper.pdf`, sha256 `fa812973…ff227`. It is an ABBYY FineReader scan. Figures 5–7 are embedded 300 ppi grey JPX images on PDF pages 5–6 (journal pp. 279–280).
- Outputs:
  - `gold_edges.json`: data
  - `overlays/fig{5,6,7}a_overlay.png`: whole panel
  - `overlays/*_zoom.png`: 3× zoom of 150–270 µm
  - `scripts/`: digitize.py, postproc.py, deriv_peak.py, assemble.py, crop.py, lines.py, run_all.sh
  - `work/`: renders and intermediate JSON

## What the figures actually contain (important)
- **Each figure has one edge**: one pair of uniform exposures and one microdensitometer trace. There are no series of exposures or contrasts.
- "(a)" and "(b)" in the captions are **not separate panels**. (a) is the dashed experimental curve and (b) the solid model curve, overlaid in the same D-vs-X plot. The lower plot is dD/dX, again with both curves.
- The dashed experimental curve lies under the thick solid model line (≈ 9 px at 600 dpi ≈ 2.4 µm / 0.012 D) almost everywhere. **It cannot be traced as its own full curve.** So the main trace in the JSON is the centre-line of the solid line. That is the model, and it matches the measurement within about ±0.006 D and ±1.2 µm. The experimental dashes that show off the line are listed separately (`experimental_fragments`):
  - Plateau ripple of the measured curve is about ±0.01–0.02 D.
  - Fig. 7: the measured rise is about 1–2 µm earlier than the model on its lower half (D ≈ 0.37–0.44). The dashes are visible on the left side of the line.
  - Fig. 5: a few dashes sit about 0.01–0.02 D below the solid line on the border-peak shoulder (208–240 µm) and about 0.02 D above it at 275–282 µm.

## Axes (read from tick labels; same for all three)
- **x:** X [µm], major ticks at 0–400 every 100 µm, minor every 50 µm. The origin is arbitrary and the edge is at x ≈ 202 µm.
- **D:** linear optical density, major ticks at 0.2–1.0 every 0.2, minor every 0.1. There is an extra minor tick at 1.1, and the x-axis sits at D = 0.2.
- **Lower panel:** dD/dX from 0 to 0.15, with ticks every 0.025.

## Results (top D panel, traced centre-line)

| | Fig. 5 (Gold 100) | **Fig. 6 (Gold 200)** | Fig. 7 (Gold 400*) |
|---|---|---|---|
| low plateau D (10–150 µm) | 0.328 | **0.327** | 0.383 |
| high plateau D (320–400 µm) | 0.917 | **0.785** | 0.814 |
| fringe min D @ x | 0.318 @ 183 | **0.316 @ 181** | 0.344 @ 190 |
| border max D @ x | 1.042 @ 213 | **0.890 @ 214** | 0.908 @ 214 |
| ΔD1 fringe / ΔD2 border | 0.010 / 0.125 | **0.011 / 0.105** | 0.039 / 0.094 |
| R = ΔD2/ΔD1 | ≈ 13 | **≈ 9** | ≈ 2.4 |
| x10 / x50 / x90 (µm) | 198.1 / 202.7 / 204.6 | **196.6 / 201.8 / 205.0** | 198.8 / 202.7 / 205.3 |
| 10–90 % width | 6.5 µm | **8.4 µm** | 6.5 µm |
| max slope (2 µm / 1 µm diff) | 0.134 / 0.171 | **0.068 / 0.073** | 0.070 / 0.073 |
| dD/dX peak read from lower panel | ≈ 0.125 | **≈ 0.082** | ≈ 0.080 |

\*See the caption conflict below.

- The fringe minima are shallow and broad: within 0.003 D over about 6–8 µm. Their x position is only good to about ±3 µm. The border peak is within 0.003 D over about 4 µm.
- R for Fig. 5 and Fig. 6 is poorly determined because ΔD1 is only about 0.01 D, comparable to the digitizing error (relative error about ±40 %).
- **Slope cross-check:** the maximum slope of the digitized D curve agrees with the peak of the separately plotted dD/dX curve to within about 15–20 %. Fig. 5's edge is very steep, with about 0.5 D in 2 µm, so a finite difference depends on its step there.

## Text parameters (transcribed)

### Model
- LSF: L(x) = (2.303/K)·10^(−2|x|/K) (Frieser).
- ChSF: b(x) = (2.303/K_c)·10^(−2|x|/K_c).
- ESF = (1−δ)L + δ·b, with %ChSF = δ·100.
- The exposure distribution is the integral of the ESF. The density comes from a linear characteristic curve with a 45° slope (γ = 1).
- R = ΔD2/ΔD1, i.e. border excess over fringe deficit (Fig. 1).
- K and K_c are in µm. Fig. 2's LSF peak of 0.23 = 2.303/10, and Fig. 4's example uses K = 10, K_c = 100.

### Per figure
- Fig. 5: K = 15, K_c = 90, "R = 6.24 % ChSF in ESF".
- Fig. 6: K = 20, K_c = 90, "R = 5.28 % ChSF in ESF".
- Fig. 7: K = 20, K_c = 90, "R = 2.3 % ChSF in ESF".
- The captions run "R" and "%ChSF" together. The percentage is almost certainly %ChSF (δ·100), not the ratio R. Our measured R values (≈ 13, 9, 2.4) are not 6.24, 5.28 or 2.3 either way.

### Sign and area issue
- Eq. 2 is printed without a sign. Fig. 2 draws the inhibitor (DIR) ChSF as a **negative** cusp and the accelerator ChSF as positive.
- The text says the ESF area is 1.0. That only holds if b is taken as positive; with a negative b the area is 1−2δ. The paper does not resolve this.
- The text also says the ChSF efficiency "varies with density", but gives no formula.

### Experiment
- Films: Kodak Gold 100, Gold 200 and Gold 400 colour negative, all in Kodak C-41. Density was measured in green light.
- Microdensitometer traces scan across edges: "each edge being the boundary between two regions of different but uniform exposures". The introduction speaks of knife-edge exposure.
- **Not stated:**
  - the exposure levels or log-H difference
  - the microdensitometer slit/aperture
  - whether the edge was a contact edge or projected
  - development details beyond "C-41"
  - whether the density is diffuse or specular
- The abstract mentions the "light spread function of the lens and film combination", which hints at a lens-imaged edge, but the paper does not confirm it.

### Fig. 7 conflict
The caption says **Gold 200**, but the plot legend ("Kodak Gold 400") and the Section 3 body text ("Kodak Gold 400 (Fig. 7)") both say **400**. Fig. 6 is already the Gold 200 case, so the caption is most likely a typo. K and K_c are identical to Fig. 6 and only %ChSF differs. The low plateau D of 0.38 is also different from Fig. 6's 0.33. That points to a different film base or fog, which also supports Gold 400.

## Method
1. Rendered PDF pages 5–6 at 600 dpi with pdftoppm. These are 2× upsampled from the 300 ppi scan, so the real resolution is about 0.53 µm and 0.0028 D per scan pixel.
2. Found the axis frame from the longest dark runs. Fitted the y-axis left edge and the x-axis bottom edge as lines; the ticks point inward, so these edges are clean. The scan is rotated slightly (≈ 0.2°), so I used an oblique axis frame.
3. Found ticks as dark runs in a strip 4–10 px inside each axis. Values were assigned by count from the origin, and the long/short tick pattern was checked against the labelled values (x multiples of 100, even tenths of D). Then fitted a linear map, with the x-axis line itself as D = 0.2.
   - x: 0.266 µm/px; residuals ≤ 1.2 µm, RMS ≈ 0.5 µm.
   - D: 0.00135–0.00145 D/px; residuals ≤ 0.005 D (Fig. 7), RMS ≈ 0.002 D.
4. Blanked the axes, ticks and legend, and took the largest connected component as the plotted line.
5. Tracked the line centre column by column on flat parts and row by row on the steep edge, choosing the run nearest the track each time.
   - A run wider than the nominal line + 3 px means a dash is fused to one side. In that case I kept the edge that agrees with the track and recorded the dash on the other side.
   - Isolated dashes left over after subtracting a synthetic line of the traced width were recorded as fragments.
6. Binned to 0.25 µm with a median, then interpolated to a 2 µm grid (and a 0.5 µm grid over 180–230 µm).
7. Overlays:
   - red crosses: the 2 µm points
   - green, blue and orange circles: fragments (separate, merged, residue)
   - magenta squares: fringe minimum, border maximum and the 10 %/90 % points
   - I inspected the full and zoomed overlays visually.

## Uncertainty (1σ, digitizing only)
- x: ±0.6 µm. On the steep edge that equals 0.04–0.08 D at a fixed x; 10–90 % widths are good to about ±1 µm.
- D: ±0.003 D, and ±0.005 D locally where a dash merges with the line (Fig. 6 at 189–195 µm, Fig. 5 shoulder).
- Experimental vs traced curve: within ±0.006 D except at the fragments listed.
- Not included: any printing or scan distortion of the original figure beyond what the tick residuals show, and the authors' own plotting accuracy.
