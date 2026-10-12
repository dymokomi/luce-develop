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
   speeds of EI 320/640/1000 at 8/11/14 min.

3. **Spectral print chain** (done for 2383 printed straight from the
   negative; paper prints come with part 8). The print exposure comes from the simulated
   negative's spectral density: lamp × printer filters × print-stock (or paper)
   sensitivity × 10^(−D_neg(λ)), with printer points of 0.025 log E. This
   replaces the Cineon-encoded scene. Exit tests: 2383 LAD aim of Status A
   1.09/1.06/1.03; 0.07 D per point.

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
   contrast.

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

   *As built.* Eight steps. Each step releases inhibitor and uses developer in
   proportion to how far each layer develops in it (part 2's kinetics, which
   depend on exposure). The release spreads by the distance it will have
   travelled by the end and is added to the earlier steps' (diffusion being
   linear, this equals stepping the field, with less rounding). The bath
   renews used developer at the agitation's rate. Edge effects act on the
   developer missing beyond what an even field of the same exposure misses,
   so even areas keep the published curve exactly. Watching development
   shows the image part-way (the kinetics' progress) over 2.5 s. Still open:
   halide (bromide) as its own field, the inhibitor's release proportional to
   dye actually formed (not the uninhibited curve), and single-float compute
   for the fields (half floats limit the GPU to eight steps).

5. **Grain populations.** Each colour record holds two or three emulsion
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
   Index ordering for Portra 400.

6. **Halation** (done: 256 samples drawn from the computed distribution,
   gathered at reduced resolution; strengths are estimates). A geometric point-spread function: the base's thickness and
   index give a total-internal-reflection ring at 2d·tan θc (≈ 230 µm for
   125 µm acetate) inside a faint Fresnel disc. Light returns red first, and
   the antihalation type (rem-jet, AHU, grey base, none) sets its strength.

7. **Reciprocity** (done: a knee law per layer instead of Kron–Halm's two
   sides; high-intensity failure is not modelled). Per layer on local irradiance, from the raw's
   shutter time (EXIF), calibrated to Kodak E-31 and Fujifilm tables; Velvia
   goes green past 4 s and Vision3 cyan past 1 s, as their filters say.

8. **Viewing and paper.** Reflection prints computed spectrally with
   Williams–Clapper/Shore–Spoonhower multiple internal reflection; projection
   seen in a dark surround (CAM16 dark to dim).

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
