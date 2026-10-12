#!/usr/bin/env python3
"""Write src/film_stocks.lucb: each film stock's published curves resampled for the
film model (src/film.lucb). Add a stock's JSON (from read_vector_sheets.py, or a
digitization like digitize_ti2082.py's) to STOCKS, then run dev/film/make_stocks.py.

Kodak EXR 500T 5298 comes from Kodak's own datasheet (TI2082, revised 10-93), read
off its raster graphs into kodak_5298_ti2082.json. That sheet has no per-dye
spectra, so its dye shapes are EXR 200T 5293's, the same ECN-2 dye set, and it marks
no normal exposure, so its grey is Vision 500T 5279's, the same speed. The others
come from their sheets' vector graphs, exactly. 5279's sheet draws no D-min, so it
takes 5298's."""
import json
from pathlib import Path

here = Path(__file__).resolve().parent
NM = [380.0 + 5.0 * i for i in range(81)]
CHANNELS = ('red', 'green', 'blue')
# The most readings a curve keeps (the Stock struct's array sizes).
CURVE_MOST, GRAIN_MOST, MTF_MOST = 96, 48, 20


def interp(xs, ys, q):
    """Linear interpolation over the readings that exist; None outside them."""
    pairs = [(x, y) for x, y in zip(xs, ys) if y is not None]
    xs = [p[0] for p in pairs]; ys = [p[1] for p in pairs]
    if not xs or q < xs[0] or q > xs[-1]:
        return None
    for (a, ya), (b, yb) in zip(zip(xs, ys), zip(xs[1:], ys[1:])):
        if a <= q <= b:
            return ya if b == a else ya + (yb - ya) * (q - a) / (b - a)
    return ys[-1]


def log_sensitivity(nm, values):
    pairs = [(x, y) for x, y in zip(nm, values) if y is not None]
    xs = [p[0] for p in pairs]; ys = [p[1] for p in pairs]
    out = []
    for q in NM:
        v = interp(xs, ys, q)
        if v is None:
            # Beyond what Kodak draws, sensitivity falls away steeply (0.12 log per nm).
            v = ys[0] - 0.12 * (xs[0] - q) if q < xs[0] else ys[-1] - 0.12 * (q - xs[-1])
        out.append(v)
    return out


def spectral(nm, values, floor=None):
    """Held flat beyond the drawn range; `floor` clamps below (None keeps net negatives)."""
    pairs = [(x, y) for x, y in zip(nm, values) if y is not None]
    xs = [p[0] for p in pairs]
    out = [interp(nm, values, min(max(q, xs[0]), xs[-1])) for q in NM]
    return [max(floor, v) for v in out] if floor is not None else out


def full_rows(table, axis):
    """The readings where all three channels were read."""
    keep = [i for i, _ in enumerate(table[axis]) if all(table[c][i] is not None for c in CHANNELS)]
    return [table[axis][i] for i in keep], {c: [table[c][i] for i in keep] for c in CHANNELS}


def from_ti2082():
    """5298's digitization in the common form."""
    sheet = json.load(open(here / 'kodak_5298_ti2082.json'))
    dyes = json.load(open(here / 'kodak_5293_dyes.json'))
    rename = {'red': 'red', 'green': 'olive', 'blue': 'blue'}
    def table(t, axis):
        return {axis: t[axis], **{c: t[rename[c]] for c in CHANNELS}}
    sensitivity = table(sheet['sensitivity'], 'nm')
    # The blue curve starts at 400 nm on the graph (2.65); the digitizer's first reading is 405.
    sensitivity['blue'] = [2.65 if q == 400 else v for q, v in zip(sensitivity['nm'], sensitivity['blue'])]
    def dye(points):
        return [interp([p[0] for p in points], [p[1] for p in points], q) for q in NM]
    return {
        'name': 'Kodak EXR 500T 5298', 'source': sheet['source'] + ' Dye shapes: ' + dyes['source'],
        'ei': 500, 'kelvin': 3200.0, 'grey_log_h': -1.744,
        'characteristic': table(sheet['characteristic'], 'log_h'),
        'sensitivity': sensitivity,
        'dyes': {'nm': NM, 'cyan': dye(dyes['cyan']), 'magenta': dye(dyes['magenta']), 'yellow': dye(dyes['yellow'])},
        'd_min': {'nm': sheet['dye_density']['nm'], 'density': sheet['dye_density']['olive']},
        'granularity': table(sheet['granularity'], 'log_h'),
        'mtf': table(sheet['mtf'], 'cycles_per_mm'),
    }


KINDS = {'negative': 0, 'reversal': 1, 'monochrome': 2}


def planck(kelvin):
    """Black-body power at NM, relative."""
    import math
    out = []
    for q in NM:
        m = q * 1e-9
        out.append(1.0 / (m ** 5 * (math.exp(1.4387769e-2 / (m * kelvin)) - 1.0)))
    top = max(out)
    return [v / top for v in out]


def granularity_from_rms(log_h, curves, rms):
    """A granularity table from one published rms value (at density 1.0 over
    D-min): grain grows as the square root of the density over D-min (Selwyn's
    law for a layer of uniform grains), every 0.1 log H."""
    grid = log_h[::2]
    out = {'log_h': grid}
    for c in CHANNELS:
        least = min(curves[c])
        out[c] = [rms * max(curves[c][i * 2] - least, 0.02) ** 0.5 for i in range(len(grid))]
    return out


def filled(values):
    """Missing readings at either end held at the nearest one read; between, interpolated."""
    known = [i for i, v in enumerate(values) if v is not None]
    out = []
    for i, v in enumerate(values):
        if v is not None:
            out.append(v)
        elif i < known[0]:
            out.append(values[known[0]])
        elif i > known[-1]:
            out.append(values[known[-1]])
        else:
            a = max(k for k in known if k < i)
            b = min(k for k in known if k > i)
            out.append(values[a] + (values[b] - values[a]) * (i - a) / (b - a))
    return out


def from_velvia():
    data = json.load(open(here / 'fuji_velvia_50.json'))
    char = data['characteristic']
    # Density only falls as exposure rises; the traced D-min plateau wobbles.
    for c in CHANNELS:
        falling = []
        for v in filled(char[c]):
            falling.append(min(v, falling[-1]) if falling else v)
        char[c] = falling
    return {**data, 'grey_log_h': round(__import__('math').log10(10.0 / data['ei']), 4),
            'granularity': granularity_from_rms(char['log_h'], char, data['rms_granularity']),
            # A slide's base is clear: a flat 0.13 (its Status A D-min, about).
            'd_min': {'nm': NM, 'density': [0.13] * len(NM)}}


def from_acros():
    import math
    data = json.load(open(here / 'fuji_acros_ii.json'))
    grid = data['characteristic']['log_h']
    rising = []
    for v in filled(data['characteristic']['d76_7']):
        rising.append(max(v, rising[-1]) if rising else v)
    char = {'log_h': grid, 'red': rising, 'green': rising, 'blue': rising}
    # The spectrogram is the sensitivity times 5400 K light: divide the light out.
    light = planck(data['kelvin'])
    log_s = [None if v is None else v - math.log10(l) for v, l in zip(data['spectrogram']['log'], light)]
    # Silver is neutral: three dyes that each cover a third of the spectrum add up flat,
    # and each reads in its own Status M band, so the three identical layers stay neutral.
    segment = lambda lo, hi: [1.0 if lo <= q < hi else 0.0 for q in NM]
    # No MTF is published (resolving power 200 lines/mm at 1000:1): an estimate, an
    # exponential spread of 1.1 um.
    frequencies = [3, 5, 10, 15, 20, 30, 40, 50, 60, 80, 100, 125, 150, 200]
    response = [100.0 / (1.0 + (2 * math.pi * 1.1e-3 * f) ** 2) for f in frequencies]
    return {'name': data['name'], 'source': data['source'], 'kind': 'monochrome', 'ei': data['ei'], 'kelvin': data['kelvin'],
            # Normal exposure: ISO 6's speed point (0.8 / ISO lux s) plus 4 stops (1.2 log H).
            'grey_log_h': round(math.log10(0.8 / data['ei']) + 1.2, 4),
            'characteristic': char,
            'sensitivity': {'nm': NM, 'red': log_s, 'green': log_s, 'blue': log_s},
            'dyes': {'nm': NM, 'cyan': segment(595, 1000), 'magenta': segment(495, 595), 'yellow': segment(0, 495)},
            'd_min': {'nm': NM, 'density': [0.05] * len(NM)},
            'granularity': granularity_from_rms(grid, char, data['rms_granularity']),
            'mtf': {'cycles_per_mm': frequencies, 'red': response, 'green': response, 'blue': response}}


def number(v):
    t = ('%.5f' % v).rstrip('0')
    return t + '0' if t.endswith('.') else t


def block(values, size, per_line=12, indent='        '):
    values = list(values) + [0.0] * (size - len(values))
    lines = [', '.join(number(v) for v in values[i:i + per_line]) for i in range(0, len(values), per_line)]
    return '[\n' + ',\n'.join(indent + line for line in lines) + ']'


def stock(key, data, d_min_from=None):
    log_h, curves = full_rows(data['characteristic'], 'log_h')
    grain_h, grains = full_rows(data['granularity'], 'log_h')
    freqs, mtf = full_rows(data['mtf'], 'cycles_per_mm')
    assert len(log_h) <= CURVE_MOST and len(grain_h) <= GRAIN_MOST and len(freqs) <= MTF_MOST
    curve_step = round(log_h[1] - log_h[0], 4)
    grain_step = round(grain_h[1] - grain_h[0], 4)
    sensitivity = sum((log_sensitivity(data['sensitivity']['nm'], data['sensitivity'][c]) for c in CHANNELS), [])
    dyes = sum((spectral(data['dyes']['nm'], data['dyes'][d]) for d in ('cyan', 'magenta', 'yellow')), [])
    d_min_data = data.get('d_min') or d_min_from
    d_min = spectral(d_min_data['nm'], d_min_data['density'], 0.0)
    pad = lambda table, n, most: sum((list(table[c]) + [table[c][-1]] * (most - n) for c in CHANNELS), [])
    return f'''## {data['name']}: {data['source']}.{' D-min: Kodak EXR 500T 5298 (none drawn).' if 'd_min' not in data else ''}
pub func {key}() -> Stock:
    return Stock(
        name = "{data['name']}",
        kind = {KINDS[data.get('kind', 'negative')]},
        speed = {number(data['ei'])},
        kelvin = {number(data['kelvin'])},
        grey_log_h = {number(data['grey_log_h'])},
        sensitivity = {block(sensitivity, 243)},
        dyes = {block(dyes, 243)},
        d_min = {block(d_min, 81)},
        curve_first = {number(log_h[0])},
        curve_step = {number(curve_step)},
        curve_count = {len(log_h)},
        curves = {block(pad(curves, len(log_h), CURVE_MOST), CURVE_MOST * 3)},
        granularity_first = {number(grain_h[0])},
        granularity_step = {number(grain_step)},
        granularity_count = {len(grain_h)},
        granularity = {block(pad(grains, len(grain_h), GRAIN_MOST), GRAIN_MOST * 3)},
        mtf_count = {len(freqs)},
        mtf_frequencies = {block(freqs, MTF_MOST)},
        mtf = {block(pad(mtf, len(freqs), MTF_MOST), MTF_MOST * 3)})
'''


exr_500t = from_ti2082()
STOCKS = [
    ('kodak_5298', exr_500t),
    ('kodak_5293', json.load(open(here / 'kodak_5293.json'))),
    ('kodak_5279', json.load(open(here / 'kodak_5279.json'))),
    ('kodak_5277', json.load(open(here / 'kodak_5277.json'))),
    ('fuji_velvia_50', from_velvia()),
    ('fuji_acros_ii', from_acros()),
]

header = f'''## Generated by dev/film/make_stocks.py; do not edit. The film stocks the film
## model (film.lucb) develops: each one's published curves, resampled. Spectra are
## at spectral.samples (380–780 nm every 5 nm); per-layer tables are red, green,
## blue (cyan-, magenta-, yellow-forming) one after another, each `*_most` long
## (the readings past a table's count repeat its last).

pub let curve_most: usize = {CURVE_MOST}
pub let granularity_most: usize = {GRAIN_MOST}
pub let mtf_most: usize = {MTF_MOST}

## A stock as its datasheet describes it.
pub struct Stock:
    pub var name: str
    ## 0 a color negative, 1 a color reversal (slide) film, 2 a black-and-white
    ## negative (its three layers identical, its "dyes" neutral silver).
    pub var kind: i64
    ## Its exposure index under the light it is balanced for, in kelvin.
    pub var speed: f64
    pub var kelvin: f64
    ## Log exposure (lux s) of normal exposure: an 18% grey card.
    pub var grey_log_h: f64
    ## log10 spectral sensitivity per layer (reciprocal exposure for a fixed density).
    pub var sensitivity: f64[243]
    ## Spectral density of the cyan, magenta and yellow dyes, peak-normalized (net of
    ## the masking couplers where Kodak draws it so).
    pub var dyes: f64[243]
    ## Diffuse spectral density at minimum density (base, fog and the colored-coupler mask).
    pub var d_min: f64[81]
    ## Status M density per layer over log exposure (lux s): `curve_count` readings
    ## from `curve_first` every `curve_step`.
    pub var curve_first: f64
    pub var curve_step: f64
    pub var curve_count: usize
    pub var curves: f64[{CURVE_MOST * 3}]
    ## Diffuse rms granularity (σD through a 48 µm aperture) per layer over log exposure.
    pub var granularity_first: f64
    pub var granularity_step: f64
    pub var granularity_count: usize
    pub var granularity: f64[{GRAIN_MOST * 3}]
    ## Modulation transfer (percent) per layer at `mtf_frequencies` (cycles per mm).
    pub var mtf_count: usize
    pub var mtf_frequencies: f64[{MTF_MOST}]
    pub var mtf: f64[{MTF_MOST * 3}]

## The stocks, in the Film Stock menu's order (after none).
pub let stock_count: usize = {len(STOCKS)}

## Stock `at` (0-based in that order).
pub func stock_at(at: usize) -> Stock:
    return match at:
{chr(10).join(f"        {i} => {key}()" for i, (key, _) in enumerate(STOCKS[:-1]))}
        _ => {STOCKS[-1][0]}()

'''
body = '\n'.join(stock(key, data, exr_500t['d_min']) for key, data in STOCKS)

# The print stock. Release print film's three curves are made to one shape, set
# apart along log H so a neutral prints neutral; Kodak's raster graph runs them
# together near D-min, where they cannot be read apart. So: each curve over its
# own D-min, aligned where it passes density 2.0 over it, averaged where all
# three were read, and set back at each layer's place and D-min.
print_data = json.load(open(here / 'kodak_2383.json'))
char = print_data['characteristic']
grid = char['log_h']
def crossing(values, level):
    for (a, ya), (b, yb) in zip(zip(grid, values), zip(grid[1:], values[1:])):
        if ya is not None and yb is not None and ya < level <= yb:
            return a + (level - ya) * (b - a) / (yb - ya)
    raise ValueError('curve never reaches the level')
minima = {c: min(v for v in char[c] if v is not None) for c in CHANNELS}
places = {c: crossing([None if v is None else v - minima[c] for v in char[c]], 2.0) for c in CHANNELS}
step = grid[1] - grid[0]
shape_x = [round(-2.5 + step * i, 4) for i in range(int(round(5.0 / step)) + 1)]
shape = []
for q in shape_x:
    readings = [interp(grid, [None if v is None else v - minima[c] for v in char[c]], q + places[c]) for c in CHANNELS]
    readings = [r for r in readings if r is not None]
    shape.append(sum(readings) / len(readings) if readings else None)
known = [i for i, v in enumerate(shape) if v is not None]
shape = [shape[known[0]] if i < known[0] else (shape[known[-1]] if i > known[-1] else v) for i, v in enumerate(shape)]
# Below the readings the shape rests at 0 over D-min; density only ever rises
# with exposure (averaging where the readings start and stop can wobble).
rising = []
for v in shape:
    rising.append(max(0.0, v, rising[-1] if rising else 0.0))
shape = rising
print_curves = []
for c in CHANNELS:
    print_curves += [minima[c] + interp(shape_x, shape, min(max(q - places[c], shape_x[0]), shape_x[-1])) for q in grid]
assert len(char['log_h']) <= CURVE_MOST
print_dyes = sum((spectral(print_data['dyes']['nm'], print_data['dyes'][d], 0.0) for d in ('cyan', 'magenta', 'yellow')), [])
n = len(char['log_h'])
body += f'''
## A color print stock as its datasheet describes it, for printing images held
## as printing density (film_print.lucb), whose definition is the print's own spectral
## response: so its spectral sensitivity, though in its data, is not needed.
pub struct PrintStock:
    pub var name: str
    ## Spectral density of the cyan, magenta and yellow dyes, each scaled so the
    ## three together make a visual neutral of 1.0 under a xenon-arc projector.
    pub var dyes: f64[243]
    ## Status A density per layer over log exposure (lux s): `curve_count`
    ## readings from `curve_first` every `curve_step`.
    pub var curve_first: f64
    pub var curve_step: f64
    pub var curve_count: usize
    pub var curves: f64[{CURVE_MOST * 3}]

## {print_data['name']}: {print_data['source']}
pub func kodak_2383() -> PrintStock:
    return PrintStock(
        name = "{print_data['name']}",
        dyes = {block(print_dyes, 243)},
        curve_first = {number(char['log_h'][0])},
        curve_step = 0.05,
        curve_count = {n},
        curves = {block(sum((print_curves[i * n:(i + 1) * n] + [print_curves[(i + 1) * n - 1]] * (CURVE_MOST - n) for i in range(3)), []), CURVE_MOST * 3)})
'''
(here.parents[1] / 'src/film_stocks.lucb').write_text(header + body)
print('wrote src/film_stocks.lucb:', ', '.join(d['name'] for _, d in STOCKS), '+', print_data['name'])
