# The physical film engine

The film stages of luce-develop are being rebuilt so that each step of the
photographic process carries real physical state. The aim is to match how real
film behaves as exposure and processing change, within the variation between
real rolls. The owner's direction (2026-10-12): maximum physical and visual
accuracy, no shortcuts. Rendering may be slow, progressive or offline wherever
that buys accuracy, and the viewport may show the film developing over time.

The research behind this: `reports/Physical film process simulation.md` and its
notes in `research_notes/Physical film process simulation/` (including the
owner's two supplied reports: camera-to-film spectral input, and the multiscale
stochastic emulsion model).

## What the engine simulates

```
camera values ──► scene spectra at the film plane ──► light transport in the stack
   (camera curves,        (per (camera, stock, light):      (per-layer scatter,
    camera.lucb)           root-polynomial to exposure)      halation ring, filters)
        │
        ▼
latent image ──► development (reaction–diffusion, time-stepped) ──► bleach / fix
(grain populations,  (developer, oxidized developer, couplers,      (silver kept,
 Poisson catches,     halide and DIR inhibitor fields; dye and       two-rate bleach)
 reciprocity states)   silver per grain population)
        │
        ▼
spectral transmission  ──► scanner / printer / enlarger / projector ──► viewer
(dyes, residual mask,      (each its own spectral metric; light averaged
 silver; per µm)            before taking logs; Callier for silver)
```

Units are physical throughout: micrometres on the film, seconds and °C in
the process, J m⁻² of exposure relative to the stock's speed point. Output
pixel size only decides how finely the film is sampled.

## The parts, in build order

1. **Camera input** (done, f9d52f0): camera spectral sensitivities, measured or
   estimated from the raw's matrix; a 13-term root-polynomial per (camera,
   stock, light) fitted on real surfaces and sky. The scene light is kept.
   Exit test: held-out mean ≤ 0.1 stop (met: 0.10 estimated, 0.08 measured).

2. **Development kinetics** (done, 1345bd5, in its closed form; the field form
   comes with part 4). The state is developed silver mass per layer.
   Its growth is `dm/dt = k(T)·f_ind(t)·(m_max(E) − m)·a(C)/(1 + K_Br·Br + K_I·I)`,
   with Arrhenius k (61–71 kJ/mol B&W stock developers, 39 dilute, 68 C-41,
   64 E-6 first developer), an induction time, and fog as its own population
   with about twice the activation energy. Density follows silver through
   covering power, or through dye yield for colour stocks. It replaces the
   fitted shift and scale rule. Exit tests: Kodak's Z-131 control deltas
   (±40 s around 3:15); D-76 time series for Acros, Tri-X and HP5; E-6 push
   speeds of EI 320/640/1000 at 8/11/14 min. *Status:* C-41 ±40 s met; Tri-X
   D-76 6/10/12 min within 0.08; Acros II D-76 4/10 min within 0.1 (one rate per
   exposure: Fujifilm's 4 minutes is slower in the midtones than that allows;
   per-population kinetics would separate it); HP5 has no published series
   (it borrows Tri-X's); Ektachrome E100's E-6 pushes: the layers' mean within
   0.15 stop of Kodak's, blue up to 0.4 more (one rate shared by the layers).
   The black-and-white kinetics are fitted in exactly the form they develop in.

3. **Spectral print chain** (done: 2383 printed straight from the negative
   through printing density; color paper through its own layers' sensitivity
   under a 3200 K enlarger lamp, part 8). The print exposure comes from the simulated
   negative's spectral density: lamp × printer filters × print-stock (or paper)
   sensitivity × 10^(−D_neg(λ)), with printer points of 0.025 log E. This
   replaces the Cineon-encoded scene. Exit tests: 2383 LAD aim of Status A
   1.09/1.06/1.03; 0.07 D per point. *Status:* printer lights print Kodak's
   LAD patch (0.05 below grey on the negative) as the 1.0 visual neutral; read
   through Status A (tabulated, python-colormath) it is 1.08 / 1.06 / 1.06. A
   printer point moves it 0.11, as 2383's datasheet slope says; Kodak's rule
   of thumb, 0.07, is lower than its own sensitometry.

4. **Reaction–diffusion development (progressive)** (done in a first form,
   see "As built" below). Development runs as a
   time integration on a film-plane grid: developer at the bath boundary
   (an exchange rate h(agitation)), consumption by developing grains, bromide
   and DIR inhibitor release, diffusion in gelatin (per layer, with interlayer
   transfer), restraint in the rate law. Interimage and edge effects then
   follow from chemistry instead of a fixed matrix. The renderer steps it on the GPU and
   shows the developing negative or positive frame by frame (the viewport's
   "watch it develop"); the final state is what export uses. Exit tests:
   gamma ratios 0.8–1.3 (scan films); Nelson's adjacency (e-folding ≈ 20 µm,
   2–5 %); stand development's strong edges; agitation changing edges, not
   contrast. *Status:* a single colour on Vision3 250D develops 1.05× the
   neutral's gamma; stand edges stronger than continuous; agitation leaves even
   areas within 1 % (each pixel's even-field exhaustion is now exact at its own
   exposure). Portra 400's edge overshoots 13 % with a 27 µm e-folding: the
   length is Nelson's, the strength what Portra 400's own MTF (1.11 at 12
   cycles/mm) implies; Nelson's fit to Kodak Gold 200 weighs it 2.3–5.3 %. The
   data disagree between films; measured edge traces per stock would settle it.

   *How it runs.* A film-plane grid per layer at the chemistry's scale (cells
   no wider than 10 µm, or the pixel when that is finer), holding per layer:
   developable silver m∞ (from exposure and the latent image), developed
   silver m, developer C, bromide B and DIR inhibitor I (cyan, magenta and
   yellow records' own). Each step: development `dm/dt = k(x, T)·(m∞ − m)·
   C/(K_C + C)/(1 + K_B·B + K_I·I)`; developer used and halide and inhibitor
   released in proportion to dm; diffusion in the plane (a five-point stencil
   or a separable kernel per step, D per species) and between layers;
   developer entering from the bath at the top surface at a rate set by
   agitation (h), its reaction products leaving. Compute kernels on luce-gpu
   advance it a number of steps per frame, and the viewport shows the
   developing negative (or the print or scan it makes) frame by frame; the
   export runs it to the end on the same kernels. A large even patch must
   reproduce the closed form of part 2 (its constants are fitted so), so
   edges, interimage and agitation come out as differences from it.

   *As built.* Sixteen steps, in single floats (a compute kernel, film.comp).
   Each step releases inhibitor and uses developer in
   proportion to how far each layer develops in it (part 2's kinetics, which
   depend on exposure). The release spreads by the distance it will have
   travelled by the end and is added to the earlier steps' (diffusion being
   linear, this equals stepping the field, with less rounding). The bath
   renews used developer at the agitation's rate. Edge effects act on the
   developer missing beyond what an even field of the same exposure misses,
   so even areas keep the published curve exactly. Watching development
   shows the image part-way (the kinetics' progress) over 2.5 s. Still open:
   halide (bromide) as its own field. Each step releases inhibitor with the
   dye it forms under the inhibitor already released (DIR couplers react as
   dye forms); the developed curve is solved so an even field still develops
   to the published one (fixed point, damped; cached per development).

5. **Grain populations** (done in a first form: three populations per layer
   fitted to the curve, their strengths to the published RMS, an exact
   correction per log H; each dye-cloud site holds many grains of each, the
   share developed spreading binomially about P by a deviate fixed for the
   site, so the emulsion is one realization across exposure and development.
   The stochastic render (see "Rendering" below) now traces explicit grains
   where few develop in a pixel. Still open: coupler saturation at high
   density, two-scale cloud clusters). Each colour record holds two or three emulsion
   populations (fast, mid, slow) as a persistent marked point process in
   µm: positions, sizes (T-grain plates or cubic), sensitivity class. Exposure
   makes Poisson photon catches; a grain is developable past its threshold
   state; development (part 4) decides how far it develops. Colour stocks then
   form dye clouds, which add in density. Silver forms opaque filaments, a
   Boolean union. The same population gives the mean curve and the grain, so
   granularity follows exposure (the "bump" where the fast layer dominates).
   When a pixel spans many clouds, the population's statistics stand in
   (mean, variance, the measured spectrum's shape), so zoomed-out views stay
   fast. Exit tests: 48 µm RMS against density, including the bump, for every
   stock with a published curve; two-scale noise power spectrum; Print Grain
   Index ordering for Portra 400. *Status:* every stock's fitted grains make
   its granularity from toe to shoulder within 0.05 % (each population's clouds
   at least as large as its share of the toe needs), but one: Vision 500T
   5279's green toe, 18 % shy since the release follows the dye formed (its
   populations develop out of order there); Portra 160 < 400 < 800 in the
   render at net density 1.0, where Kodak gives their figures. The two-scale spectrum waits on cluster data (dye cloud sizes,
   noise power spectra).

6. **Halation** (done: 256 samples drawn from the computed distribution,
   gathered at reduced resolution; strengths are estimates). A geometric point-spread function: the base's thickness and
   index give a total-internal-reflection ring at 2d·tan θc (≈ 230 µm for
   125 µm acetate) inside a faint Fresnel disc. Light returns red first, and
   the antihalation type (rem-jet, AHU, grey base, none) sets its strength.

7. **Reciprocity** (done: a knee law per layer instead of Kron–Halm's two
   sides; high-intensity failure is not modelled). Per layer on local irradiance, from the raw's
   shutter time (EXIF), calibrated to Kodak E-31 and Fujifilm tables; Velvia
   goes green past 4 s and Vision3 cyan past 1 s, as their filters say.

8. **Viewing and paper** (done). Reflection prints computed spectrally with
   Williams–Clapper/Shore–Spoonhower multiple internal reflection (down at
   28°, diffuse up, about 60 % turned back by the surface; base 0.9, an
   estimate) and a 0.1 % surface reflection bounding D-max at 3.0, above
   Endura's measured 2.66–2.76. Unmixing a paper's curves near D-max is
   step-bounded (an unbounded Newton ran a layer's dye to thousands there).
   Projection is seen at 48 cd/m² in a dark surround, a paper under 500 lux in
   an average one, each carried to a 100 cd/m² display in a dim room by CAM16
   with lightness, chroma and hue matched (luce_color.cam16.corresponding;
   checked against colour-science): the print shows flatter (mid grey
   18 → 21.7), the paper harder (18 → 13.5). The print and paper views run
   per pixel on the GPU (no 64³ table), within the film's parity limits.
   Still open: viewing flare in the room, the paper's own surface texture
   (gloss, lustre, matte), and the observer's Hunt and Stevens effects,
   which a relative match leaves out.

## Rendering: progressive and stochastic

Like a modern path tracer, the physical render is Monte Carlo and progressive
(owner, 2026-10-12). Each pass adds samples, and the picture converges while
the viewport shows it: the latent image forming, then development running its
course. What is sampled:

- photon catches per grain (Poisson in the exposure each grain receives);
- the light reaching a grain through scatter and the halation ring (paths
  through the stack, not convolutions);
- the scanner's, printer's or enlarger's aperture over the film (transmitted
  light averaged over random positions within each pixel's footprint);
- chemistry, stepped in time on its grid, its own progressive axis.

The emulsion's own randomness is not estimation noise. Grain positions,
sizes, sensitivity classes and photon arrivals belong to one realization,
seeded by the frame, and it stays fixed across passes and settings. Passes
converge to that realization's exact result: its grain, never a smooth
average. Only the sampling of light paths and apertures averages away.
Interactive views may start from the statistical tables (the current engine)
and refine toward the stochastic answer.

*As built* (film_grains.lucb, film_passes.lucb, film_stages.glsl stages 10–15,
film_gpu.lucb). Each layer's three populations are Poisson grains on the film
plane, made per cell from a hash (fixed across passes and settings), each with
a place, a size (0.6–1.4 of its population's) and a rank; a grain develops
where its rank is under its population's share at the effective log H at its
own centre, and forms a dye (silver) cloud, density q·(1 − r²/ρ²)². The grains
are fitted with Campbell's theorem, exact for a Poisson field read by
averaging light: at every exposure the field's density is the developed curve
and its rms through 48 µm the granularity (in each layer's dye: the
granularity over the scan's own-channel slope). The populations develop along
their own logistics at a solved exposure; the clouds' strength is solved for
the variance; where a slide's D-max needs it, the populations get more grains
(a cloud is at most 2.5 dense).

A pixel's light is the mean over its area of the light the grains pass. Where
few clouds develop in it (fewer than 16 a layer: toes, a slide's highlights,
views finer than the grain) its grains are traced: those reaching the pixel
gathered once (only the rank bins that can develop are made, each in cells
sized to hold a few grains), then 256 samples among them, read through the
scan's slopes about the pixel's own reading, less the traced grains'
cross-channel average (Campbell). Elsewhere the pixel is the sum of hundreds of
independent grains, Gaussian to a few percent: it is drawn from that
distribution, with the fitted grains' own Campbell granularity scaled to its
area, and a deviate tied to its neighbours' as clouds across its border tie
them (variance, side and diagonal covariances from the clouds'
autocorrelation over two pixels). Tested: drawn pixels match traced grains at
45-megapixel pixels in variance (0.1 %) and neighbour correlation; grey reads
the curve within 0.01 in every channel for a negative, a slide and black and
white; the GPU matches the CPU. A 45-megapixel export with its grain takes
about 17 s on an M-series GPU.

Still estimates: a dye cloud's peak density (0.5; silver 2.0), which with the
granularity sets its size (about 0.4–3 µm here). Real colour-negative grain at
high magnification shows clumps several pixels wide; measured dye cloud sizes
or noise power spectra per stock would set the size properly (and with it the
grain's texture). Population radii ratios (1, 0.75, 0.55) are estimates too.

## Rules

- Every constant names its source or says it is an estimate.
- A stock is a parameter package with provenance: construction, grain
  populations, sensitivities, kinetics, couplers and dyes, transport.
- Optical averaging happens in transmitted light, never in density.
- Photon noise is not added twice: the Poisson catches are the shot noise.
- Comparisons between settings reuse the same emulsion realization (seeded
  by the frame), so only processing differs.
- The CPU path (export) and the GPU path (viewer) compute the same thing,
  checked pixel against pixel by tests/parity.
