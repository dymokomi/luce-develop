# The physical film engine

The film stages of luce-develop are being rebuilt so that each step of the
photographic process carries real physical state. The aim is to match how real
film behaves as exposure and processing change, within the variation between
real rolls. The owner's direction (2026-10-12): maximum physical and visual
accuracy, no shortcuts. Rendering may be slow, progressive or offline wherever
that buys accuracy, and the viewport may show the film developing over time.

The research behind this: `reports/Physical film process simulation.md` and its
notes in `research_notes/Physical film process simulation/` (including the
owner's supplied reports: camera-to-film spectral input, the multiscale
stochastic emulsion model, and an audit of this model, `owner_supplied_model_audit.md`).

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
   (±40 s around 3:15); D-76 time series for Acros, Tri-X and HP5; E100's
   push 1 (E-4000: EI 200 at 8 min). *Status:* C-41 ±40 s met; Tri-X
   D-76 6/10/12 min within 0.08; Acros II D-76 4/10 min within 0.1 (one rate per
   exposure: Fujifilm's 4 minutes is slower in the midtones than that allows.
   Per-population rates were tried, fast, mid and slow each its own: they fit
   Acros better, rms 0.025 against 0.044, but only with the fast and slow
   populations twenty times slower than the mid one, which is not chemistry,
   so they are not used; series at more times would settle it); HP5 has no published series
   (it borrows Tri-X's). Ektachrome E100 in E-6: Kodak's E100 sheet (E-4000)
   gives one point, push 1 at 8 minutes rating it EI 200 (one stop); the
   layers' mean meets it within 0.05 stop. The 8/11/14-minute targets used
   before (EI 320/640/1000) are Ektachrome E200's (E-28), a different stock:
   only its gains beyond 8 minutes are borrowed now, at half weight, as the
   one E-6 time series Kodak publishes. *Still open:* the first developer's
   state is a share of the halide developed; a reversal stock should carry
   halide remaining, first-developer silver, colour-developer silver and
   silver removed, in silver-atom equivalents, so reversal effectiveness and
   bleaching can change.
   The black-and-white kinetics are fitted in exactly the form they develop in.

3. **Spectral print chain** (done: 2383 printed straight from the negative
   through printing density; color paper through its own layers' sensitivity
   under a 3200 K enlarger lamp, part 8). The print exposure comes from the simulated
   negative's spectral density: lamp × printer filters × print-stock (or paper)
   sensitivity × 10^(−D_neg(λ)), with printer points of 0.025 log E. This
   replaces the Cineon-encoded scene. Exit tests: 2383 LAD aim of Status A
   1.09/1.06/1.03; 0.07 D per point. *Status:* printer lights print Kodak's
   LAD patch (0.05 below grey on the negative) as the 1.0 visual neutral; read
   through ISO 5-3's Status A it is 1.08 / 1.07 / 1.06. The printer Jacobian
   at the patch (Status A density per point of one printer channel): 0.100,
   0.097, 0.086 on the diagonal, about 0.01 off it. Kodak's H-61B says "about
   0.07" a point near aim, but its quantities (which channels move, END
   curves shifted for clarity) are not yet matched to these, so the
   comparison is open, not a conflict.

4. **Reaction–diffusion development (progressive)** (done in a first form,
   see "As built" below). Development runs as a
   time integration on a film-plane grid: developer at the bath boundary
   (an exchange rate h(agitation)), consumption by developing grains, bromide
   and DIR inhibitor release, diffusion in gelatin (per layer, with interlayer
   transfer), restraint in the rate law. Interimage and edge effects then
   follow from chemistry instead of a fixed matrix. The renderer steps it on the GPU and
   shows the developing negative or positive frame by frame (the viewport's
   "watch it develop"); the final state is what export uses. Exit tests:
   gamma ratios 0.8–1.3 (a broad plausibility range: Kodak's WO1994022054
   gives 0.98–1.30 for experimental coatings, and one ratio cannot identify a
   3×3 interaction); Nelson's chemical spread (e-folding 19.5 µm, Gold); stand
   development's strong edges. *Status:* a single colour on Vision3 250D
   develops 1.05× the neutral's gamma; stand edges stronger than continuous.
   Portra 400's edge overshoots 18 % with a 21 µm e-folding, a prediction of
   the model fitted to its MTF (one MTF ordinate does not fix a step's
   overshoot). Rajkowski and Nowak's 6.24 % (Gold 100) and 5.28 % (Gold 200)
   weigh the chemical spread in their combined spread function; they are not
   edge overshoots, so they do not conflict with this. Their paper's measured
   edge traces of Gold are the test to add (with Gold as a validation stock),
   at several edge contrasts.

   *Calibrated, not predicted:* agitation leaves even areas on the published
   curve (each pixel's edge effect is the developer missing beyond an even
   field's at the same agitation). Real agitation changes even areas too
   (Kodak names it among a developer's variables). Stretching the edges'
   strength over even areas instead (the published curve held at the
   process's own agitation) moved a dense Tri-X patch 1.6 D between stand and
   continuous, far from real: the developer here is not a conserved field.
   The reference solver below makes it one.

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
   depend on exposure), under the inhibitor field as it is at that step: the
   release is added to the field and the field diffuses one step (causal:
   a release at step s has spread √(k − s) steps by step k, and the whole
   development by the end). The bath
   renews used developer at the agitation's rate. Edge effects act on the
   developer missing beyond what an even field of the same exposure misses,
   so even areas keep the published curve exactly. Watching development
   shows the image part-way (the kinetics' progress) over 2.5 s. Still open:
   halide (bromide) as its own field. Sixteen steps and cells of 10 µm (two
   per e-fold of a 20 µm chemical length) are a starting resolution, not a
   converged one.

   *The reference solver* (film_chemistry.lucb, film_chemistry_reference.lucb;
   the audit's priority 2). A CPU finite-volume solver across the film and
   down its layers, amounts per area so swelling conserves mass. Developer,
   oxidized developer, bromide, a timed DIR's precursor and free inhibitor
   move; halide, silver, image and DIR couplers (two- or four-equivalent),
   dye and bound inhibitor stay. The bath exchanges through the surface at
   J = h(c_bath − c_top). Reactions are limited to stay positive, transport is
   implicit, and the splitting symmetric. Nothing is made or lost (to
   round-off), and the result converges: Δt 0.02 against 0.01 s differs by
   2·10⁻⁶; twice the cells by 4·10⁻⁴.

   Its coatings are two Kodak patents' examples (dev/film/constructions,
   make_constructions.py): US 6,680,165 example 6.1 for C-41 (13 layers,
   a four-equivalent cyan coupler) and US 5,500,316 sample 1 for ECN-2. They
   are reference emulsions, not Portra or Vision3. Transport: Iwano's CD-4
   (14.6 µm²/s against dry thickness, so 99 in the swollen layer: reading it
   as the swollen layer's own starves the bottom layer, which then cannot make
   Portra's densities in 3:15), Iwano's KBr in 20 % gelatin (1100), swelling
   2.6, the bath's exchange by surface renewal (Kodak EP 0564598). Each stock
   is calibrated under its reference process: each record's developable
   halide is solved so a large even patch makes the published curve (within
   0.1 %). Development's rate and induction period (0.05 /s, 95 s) are fitted
   to Kodak Z-131's ±40 s chart (six numbers, within 0.03 D; a soft start
   could not make its asymmetry, a loss 1.6 times the gain).

   Predicted, not fitted (Portra 400 in C-41):
   - agitation: a tank inverted every 30 s lowers HD − LD 8 %, stand 20 %,
     against a machine's flow; in a dilute developer dense areas lose most
     (compensation, from the developer's balance alone);
   - interimage: a single colour's gamma 1.03 / 0.97 / 1.04 of the neutral's,
     weak against the 1.1–1.3 colour negatives are designed for;
   - an edge against Kodak Gold 200's measured trace (Rajkowski and Nowak,
     digitised in dev/film/edges): the border 3 % of the step (Gold 23 %),
     13 µm in (Gold 12), the fringe 2 % (Gold 2.4 %).

   The edge says what is missing. Raising the inhibitor's restraint (an
   estimate, 1 /mM) to 4–64 brings interimage to 1.10–1.29 but lifts the
   fringe with the border (16 % and 12 %), where Gold's border is nine times
   its fringe: the inhibitor alone cannot make it. Something acting on the
   dense side, the supply of developer or of oxidized developer to the
   couplers, is underweighted. The fast path's edge (fitted to MTF) is 18 %.
   Next: the oxidized developer's partition into the coupler dispersions
   (Texter, Ross and Matsubara), and fitting the restraint on Gold's edge
   with interimage held out. Each step releases inhibitor with the
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
   gathered at reduced resolution; strengths are estimates). Light leaves the
   turbid emulsion into the base diffusely (cos θ, an assumption: the ring's
   strength comes from that scattering, Mees); below the critical angle the
   back reflects its Fresnel share, beyond it all. 2d·tan θc (≈ 229 µm for
   125 µm acetate, n 1.48) is where total reflection starts, the ring's inner
   edge, not the whole kernel: the radial energy follows from the angular
   distribution, absorption and the backing. Calibration wants measured,
   wavelength-resolved line-spread tails and integrated return, with base
   thickness, backing during exposure and the rear boundary recorded. Light returns red first, and
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
   with lightness, colorfulness and hue matched (luce_color.cam16.corresponding;
   checked against colour-science): the print shows flatter (mid grey
   18 → 21.7), the paper harder (18 → 13.5). The print and paper views run
   per pixel on the GPU (no 64³ table), within the film's parity limits.
   A paper's surface (Glossy, Lustre, Matte) adds the light it reflects
   before the image, from Kodak's Polycontrast IV curves per surface (matte N
   1.3 % of white; lustre E as glossy), and the room 1 % more (viewing flare,
   an estimate). These stay separate terms: surface reflection, the room's
   flare and the paper's own density. With additive flare f over white the
   apparent density is −log10((R + f)/(1 + f)), so the room's 1 % caps a
   glossy print's apparent black near 2.0, below the 0.1 % surface's 3.0.
   The paper's white is 500 lux × 0.9 / π ≈ 143 cd/m²; CAM16's adapting
   luminance is a fifth of the white's (a grey world), each set apart. The display keeps the print's lightness, hue and colorfulness
   (CAM16 M: the Hunt effect, so the cinema's dim print shows a little less
   saturated). Still open: the surface's texture (sheen, lustre's pattern),
   and the Stevens effect beyond what CAM16's lightness carries.

## Open: what waits on data

- Dye cloud sizes, or noise power spectra, per stock: they set the clouds'
  size (now from an estimated peak density) and with it the grain's texture,
  and the two-scale clusters real negatives show.
- Measured edge traces per stock at several contrasts and agitations
  (Rajkowski and Nowak's Gold traces are public: to digitise).
- Interimage matrices measured for ECN-2 and C-41 stocks (now an estimate).
- Halation: measured spread and strength, rem-jet against removed backing.
- E-6 push speeds per layer, and E100 at more than one push time (Kodak's
  E100 sheet gives push 1 only).
- Development series at more times (per-population kinetics; HP5).
- Done: Status A and M are ISO 5-3:1995's own tables (ANSI/NAPM IT2.18-1996,
  public through 36 CFR 1238.14), with their tail slopes (densitometry.lucb).
  Slides' curves are read in Status A as their sheets give them (they were
  read in Status M before), negatives in Status M.
- Printing density in the blue (0.04–0.08 below Kodak's 5203 tables).
- High-intensity reciprocity failure (no stock in the set publishes it).
- Bromide as a field of its own and coupler saturation: the published curves
  and MTFs already hold their effects; separating them needs per-developer
  data.

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
are fitted through the Poisson field's Laplace functional (Campbell's
theorem applied to transmission): the mean transmittance over a large area,
E[T] = exp(−λ∫(1 − 10^(−q·c))dA), and the transmittance's covariance,
exp(λK(r)) − 1, are exact; the rms of the aperture's density is first order
in that exact relative variance (a delta method, accurate while the
aperture's fluctuation is small). Both hold for grains that develop
independently: shared developer depletion would correlate neighbours. At
every exposure the field's density is the developed curve and its rms through
48 µm the granularity (in each layer's dye: the granularity over the scan's
own-channel slope, a linearised inversion). The populations develop along
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

*Not yet one specimen.* The traced grains are one emulsion; the drawn
pixels match their variance and neighbour covariances, but a Gaussian deviate
with the right moments is a different realization, so a pixel's grain changes
where the render switches between the two, and between zoom levels. The
audit's invariant: rendering a region coarse must equal the light-average of
the same region rendered fine (across the switch, crops, zooms and tiles), and
a switch needs an error bound, not a grain count (large or dense clouds
dominate a pixel even among many). The fix is to derive the coarse pixels
from the same grains rather than from moments.

Still estimates: a dye cloud's peak density (0.5; silver 2.0), which with the
granularity sets its size (about 0.4–3 µm here). These are cloud radii of a
finite-density quartic profile, not grain or cluster diameters as published
(Stephenson and Saunders' 6.5 and 15 µm are illustrative simulation choices;
Hertel, Töpfer and Böttcher 1994 measured cloud profiles, NPS and granularity
together on experimental coatings). One 48 µm rms is one weighted integral of
the noise power spectrum: it cannot fix cloud size, strength, count and
clustering together. Real colour-negative grain at
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
