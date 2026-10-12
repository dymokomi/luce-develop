#!/usr/bin/env python3
"""Write src/film_stocks.lucb: each film stock's published curves resampled for the
film model (src/film.lucb). Add a stock's JSON (from read_drawings.py's vector
graphs, or a raster tracing: trace_raster_curves.py, digitize_ti2082.py) to STOCKS,
then run dev/film/make_stocks.py.

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
    dyes = json.load(open(here / 'kodak_5293.json'))
    rename = {'red': 'red', 'green': 'olive', 'blue': 'blue'}
    def table(t, axis):
        return {axis: t[axis], **{c: t[rename[c]] for c in CHANNELS}}
    sensitivity = table(sheet['sensitivity'], 'nm')
    # The blue curve starts at 400 nm on the graph (2.65); the digitizer's first reading is 405.
    sensitivity['blue'] = [2.65 if q == 400 else v for q, v in zip(sensitivity['nm'], sensitivity['blue'])]
    return {
        'name': 'Kodak EXR 500T 5298', 'source': sheet['source'] + ' Dye shapes: ' + dyes['source'],
        'ei': 500, 'kelvin': 3200.0, 'grey_log_h': -1.744,
        'characteristic': table(sheet['characteristic'], 'log_h'),
        'sensitivity': sensitivity,
        'dyes': dyes['dyes'],
        'd_min': {'nm': sheet['dye_density']['nm'], 'density': sheet['dye_density']['olive']},
        'granularity': table(sheet['granularity'], 'log_h'),
        'mtf': table(sheet['mtf'], 'cycles_per_mm'),
    }


KINDS = {'negative': 0, 'reversal': 1, 'monochrome': 2}

# Grain's geometry per stock (estimates; the granularity itself is Kodak's or
# Fujifilm's): dye clouds this far apart (um), each a Gaussian this wide (in
# cells). A fast color negative's clouds are soft and about 8 um; Velvia's,
# finer (rms 9 for a slide); Acros II's, small and crisp-edged (Fujifilm's
# Super Fine-Sigma grains: tight, high acutance).
GRAIN = {'fuji_velvia_50': (6.0, 0.5), 'fuji_acros_ii': (5.0, 0.35)}
CRISP = {'kodak_tri_x_400', 'kodak_tmax_100', 'eastman_double_x_5222', 'ilford_hp5_plus', 'kodak_tmax_100'}


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
    """A granularity table from one published rms value (σD, or as sheets print
    it, σD × 1000; at density 1.0 over
    D-min): grain grows as the square root of the density over D-min (Selwyn's
    law for a layer of uniform grains), every 0.1 log H."""
    grid = log_h[::2]
    out = {'log_h': grid}
    # Sheets print rms granularity as σD × 1000 (9); some readings keep σD (0.009).
    rms = rms / 1000.0 if rms > 0.5 else rms
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


def grain_geometry(ei, crisp=False):
    """Dye clouds for a stock without its own estimate: a fast film's are bigger,
    about 8 um at EI 500 and as the cube root of speed (grain volume grows
    with speed); a black-and-white or T-grain film's are crisper. Estimates."""
    return (round(8.0 * (ei / 500.0) ** (1.0 / 3.0), 2), 0.35 if crisp else 0.5)


def layered_mtf(data):
    """A sheet's one visual MTF curve standing for all three layers."""
    mtf = data['mtf']
    if 'visual' in mtf:
        return {'cycles_per_mm': mtf['cycles_per_mm'], **{c: mtf['visual'] for c in CHANNELS}}
    return mtf


def estimated_mtf(spread_um):
    """No MTF published: an exponential spread of `spread_um` (an estimate)."""
    import math
    frequencies = [3, 5, 10, 15, 20, 30, 40, 50, 60, 80, 100, 125, 150, 200]
    response = [100.0 / (1.0 + (2 * math.pi * spread_um * 1e-3 * f) ** 2) for f in frequencies]
    return {'cycles_per_mm': frequencies, **{c: response for c in CHANNELS}}


def rising(values):
    out = []
    for v in filled(values):
        out.append(max(v, out[-1]) if out else v)
    return out


def from_color(key, dyes_from='kodak_vision3_250d_5207'):
    """A color negative from its sheet's JSON. Kodak's and Fujifilm's still sheets
    draw only the midscale neutral, not each dye: their dye shapes are Vision3
    250D's (Kodak builds its still negatives on Vision's technology), said so in
    the source. Without a granularity curve, its rms number grows with density."""
    data = json.load(open(here / f'{key}.json'))
    char = data['characteristic']
    for c in CHANNELS:
        char[c] = rising(char[c])
    if not all(d in data.get('dyes', {}) for d in ('cyan', 'magenta', 'yellow')):
        donor = json.load(open(here / f'{dyes_from}.json'))
        data['dyes'] = donor['dyes']
        data['source'] += f'. Dye shapes: {donor["name"]}\'s (the sheet draws only the neutral)'
    if 'granularity' not in data:
        data['granularity'] = granularity_from_rms(char['log_h'], char, data['rms_granularity'])
        data['source'] += f'. Granularity: rms {data["rms_granularity"]} at density 1.0, grown with density'
    if 'mtf' not in data:
        data['mtf'] = estimated_mtf(3.0)
        data['source'] += '. MTF: none published, an estimate'
    else:
        data['mtf'] = layered_mtf(data)
    if 'd_min' not in data:
        donor = json.load(open(here / f'{dyes_from}.json'))
        data['d_min'] = donor['d_min']
    # Still negatives are made for C-41 (their sheets' curves are C-41's);
    # motion picture negatives for ECN-2, their kind's standard.
    if not key.startswith('kodak_vision3'):
        data['process'] = 'C-41'
    return data


def from_slide(key):
    """A reversal film as Velvia 50 is made: density only falls with exposure, a
    clear base (0.13), granularity from its rms number (film_model.lucb balances
    its layers so grey looks grey on the lightbox)."""
    data = json.load(open(here / f'{key}.json'))
    char = data['characteristic']
    for c in CHANNELS:
        falling = []
        for v in filled(char[c]):
            falling.append(min(v, falling[-1]) if falling else v)
        char[c] = falling
    data['mtf'] = layered_mtf(data)
    return {**data, 'granularity': granularity_from_rms(char['log_h'], char, data['rms_granularity']),
            'd_min': {'nm': NM, 'density': [0.13] * len(NM)}}


def from_monochrome(key, curve, process, minutes, sensitivity=None, spectrogram_kelvin=None, spread_um=None, rms=None):
    """A black-and-white film as Acros II is made: its sheet's normal curve
    `curve` (developed `minutes` in `process`) for all three layers, three dyes
    each covering a third of the spectrum (neutral silver), the sensitivity
    curve named `sensitivity` (log), or a spectrogram to a black body (relative,
    linear) with the light divided out."""
    import math
    data = json.load(open(here / f'{key}.json'))
    grid = data['characteristic']['log_h']
    normal = rising(data['characteristic'][curve])
    char = {'log_h': grid, 'red': normal, 'green': normal, 'blue': normal}
    if spectrogram_kelvin:
        light = planck(spectrogram_kelvin)
        table = data['spectrogram']
        values = [None if v is None or v <= 0 else math.log10(v) for v in table['relative']]
        log_s = [None if v is None else v - math.log10(l) for v, l in zip(
            [interp(table['nm'], values, q) for q in NM], light)]
        sens_nm = NM
    else:
        sens_nm = data['sensitivity']['nm']
        log_s = data['sensitivity'][sensitivity]
    segment = lambda lo, hi: [1.0 if lo <= q < hi else 0.0 for q in NM]
    grain = rms if rms is not None else data['rms_granularity']
    source = data['source'] + f'. Normal: {curve}'
    if rms is not None:
        source += f'; rms granularity {rms}, an estimate (none published)'
    if 'mtf' in data:
        mtf = layered_mtf(data)
    else:
        mtf = estimated_mtf(spread_um)
        source += f'; MTF an estimate ({spread_um} um spread; none published)'
    return {'name': data['name'], 'source': source, 'kind': 'monochrome', 'ei': data['ei'], 'kelvin': data.get('kelvin', 5500.0),
            'grey_log_h': data['grey_log_h'], 'process': process, 'minutes': minutes,
            'characteristic': char,
            'sensitivity': {'nm': sens_nm, 'red': log_s, 'green': log_s, 'blue': log_s},
            'dyes': {'nm': NM, 'cyan': segment(595, 1000), 'magenta': segment(495, 595), 'yellow': segment(0, 495)},
            'd_min': {'nm': NM, 'density': [0.05] * len(NM)},
            'granularity': granularity_from_rms(grid, char, grain),
            'mtf': mtf}


def from_1960s():
    """Eastman Color Negative 5251, from Kodak's 1968 paper on 5254 (identical
    sensitivities and dyes, a stop faster): printing densities onto 5385, no D-min
    (5293's, an ECN dye set), no granularity or MTF (estimates: grainier than
    5293, rms 13, and its MTF)."""
    data = json.load(open(here / 'eastman_color_negative_5251.json'))
    char = data['characteristic']
    for c in CHANNELS:
        char[c] = rising(char[c])
    sheet_5293 = json.load(open(here / 'kodak_5293.json'))
    data['d_min'] = sheet_5293['d_min']
    data['granularity'] = granularity_from_rms(char['log_h'], char, 13.0)
    data['mtf'] = sheet_5293['mtf']
    data['process'] = 'ECN-1'
    data['source'] += ". D-min and MTF: EXR 200T 5293's; granularity: rms 13, an estimate"
    return data


def from_5254():
    """Eastman Color Negative 5254 (1968, EI 100 tungsten): Kodak's paper
    introducing it says it has 5251's structure, spectral sensitivities and dyes
    and is one stop faster, so it is 5251 with its curves a stop (0.30 log H)
    toward less exposure. Its grain is an estimate, coarser for the speed
    (rms 15); The Godfather and Barry Lyndon were shot on it."""
    data = from_1960s()
    char = data['characteristic']
    char['log_h'] = [round(q - 0.30103, 4) for q in char['log_h']]
    data['granularity'] = granularity_from_rms(char['log_h'], char, 15.0)
    data['name'] = 'Eastman Color Negative 5254'
    data['ei'] = 100
    data['grey_log_h'] = round(data['grey_log_h'] - 0.30103, 4)
    data['source'] = ("Kodak's 1968 SMPTE paper on 5254 (the same sensitivities and dyes as 5251, a stop faster): "
                      "5251's readings moved a stop. D-min and MTF: EXR 200T 5293's; granularity: rms 15, an estimate")
    return data


def number(v):
    t = ('%.5f' % v).rstrip('0')
    return t + '0' if t.endswith('.') else t


def block(values, size, per_line=12, indent='        '):
    values = list(values) + [0.0] * (size - len(values))
    lines = [', '.join(number(v) for v in values[i:i + per_line]) for i in range(0, len(values), per_line)]
    return '[\n' + ',\n'.join(indent + line for line in lines) + ']'


def thinned(axis, table, most):
    """Every other reading, as often as it takes to fit `most` (an even step
    stays even)."""
    while len(axis) > most:
        axis = axis[::2]
        table = {c: v[::2] for c, v in table.items()}
    return axis, table


def geometry(key, data):
    """The stocks made before these estimates keep their own (8 um, 0.5)."""
    if key in GRAIN:
        return GRAIN[key]
    if key.startswith('kodak_52') or key in ('kodak_5298', 'kodak_5293', 'kodak_5279', 'kodak_5277'):
        return (8.0, 0.5)
    return grain_geometry(data['ei'], key in CRISP)


DEVELOPMENT = json.load(open(here / 'development.json'))
# Stocks without a development series of their own borrow one's kinetics
# (dimensionless: relative to their own normal development): HP5 Plus, a
# conventional cubic-grain 400 like Tri-X, takes Tri-X's.
BORROWED = {'ilford_hp5_plus': 'kodak_tri_x_400'}


from reciprocity import reciprocity


# Each stock's base (thickness µm, refractive index) and backing against
# halation (film_halation.lucb: 0 rem-jet, 1 antihalation undercoat, 2 grey
# base, 3 none). Velvia 50's 127 µm (135) is Fujifilm's; Acros II's grey TAC
# base is Fujifilm's; rem-jet on Kodak's and Eastman's motion picture negatives
# is Kodak's (Vision3's being replaced by an undercoat from 2025). Acetate's
# index 1.48; other thicknesses (125 µm for 135 still film, 132 µm for 35 mm
# motion picture film) are estimates.
BASES = {
    'kodak_portra_160': (125.0, 1.48, 1), 'kodak_portra_400': (125.0, 1.48, 1), 'kodak_portra_800': (125.0, 1.48, 1),
    'kodak_ektar_100': (125.0, 1.48, 1), 'fuji_pro_400h': (125.0, 1.48, 1), 'kodak_ektachrome_e100': (125.0, 1.48, 1),
    'fuji_velvia_50': (127.0, 1.48, 1), 'fuji_velvia_100': (127.0, 1.48, 1),
    'fuji_acros_ii': (125.0, 1.48, 2), 'kodak_tri_x_400': (125.0, 1.48, 1), 'kodak_tmax_100': (125.0, 1.48, 1),
    'ilford_hp5_plus': (125.0, 1.48, 1), 'eastman_double_x_5222': (132.0, 1.48, 2),
}


def base_of(key):
    """Thickness, index and backing of `key`'s base: motion picture color
    negatives (rem-jet) unless listed."""
    return BASES.get(key, (132.0, 1.48, 0))


def kinetics(key, data):
    """The development kinetics for stock `key` (dev/film/fit_development.py)."""
    if key in DEVELOPMENT or key in BORROWED:
        return DEVELOPMENT[BORROWED.get(key, key)]
    kind = data.get('kind', 'negative')
    if kind == 'monochrome':
        raise ValueError(f'{key}: a black-and-white stock needs a development series or a borrowed one')
    return DEVELOPMENT['reversal' if kind == 'reversal' else 'color_negative']


def stock(key, data, d_min_from=None):
    log_h, curves = thinned(*full_rows(data['characteristic'], 'log_h'), CURVE_MOST)
    grain_h, grains = thinned(*full_rows(data['granularity'], 'log_h'), GRAIN_MOST)
    freqs, mtf = thinned(*full_rows(data['mtf'], 'cycles_per_mm'), MTF_MOST)
    assert len(log_h) <= CURVE_MOST and len(grain_h) <= GRAIN_MOST and len(freqs) <= MTF_MOST
    curve_step = round(log_h[1] - log_h[0], 4)
    grain_step = round(grain_h[1] - grain_h[0], 4)
    sensitivity = sum((log_sensitivity(data['sensitivity']['nm'], data['sensitivity'][c]) for c in CHANNELS), [])
    dyes = sum((spectral(data['dyes']['nm'], data['dyes'][d]) for d in ('cyan', 'magenta', 'yellow')), [])
    d_min_data = data.get('d_min') or d_min_from
    d_min = spectral(d_min_data['nm'], d_min_data['density'], 0.0)
    pad = lambda table, n, most: sum((list(table[c]) + [table[c][-1]] * (most - n) for c in CHANNELS), [])
    developing = kinetics(key, data)
    return f'''## {data['name']}: {data['source']}.{' D-min: Kodak EXR 500T 5298 (none drawn).' if 'd_min' not in data else ''}
pub func {key}() -> Stock:
    return Stock(
        name = "{data['name']}",
        kind = {KINDS[data.get('kind', 'negative')]},
        grain_cell = {number(geometry(key, data)[0])},
        grain_width = {number(geometry(key, data)[1])},
        process = "{data.get('process', '')}",
        minutes = {number(data.get('minutes', 0.0))},
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
        mtf = {block(pad(mtf, len(freqs), MTF_MOST), MTF_MOST * 3)},
        # Development kinetics: {developing['source']}.
        saturation = {block(developing['saturation'], 3)},
        rate_slope = {block(developing['slope'], 3)},
        induction = {number(developing['induction'])},
        fog_rate = {block(developing['fog_rate'], 3)},
        # Reciprocity failure per layer: dev/film/reciprocity.py.
        reciprocity = {block(reciprocity(key, data.get('kind', 'negative')), 9)},
        base_thickness = {number(base_of(key)[0])},
        base_index = {number(base_of(key)[1])},
        backing = {base_of(key)[2]})
'''


exr_500t = from_ti2082()
STOCKS = [
    ('kodak_5298', exr_500t),
    ('kodak_5293', json.load(open(here / 'kodak_5293.json'))),
    ('kodak_5279', json.load(open(here / 'kodak_5279.json'))),
    ('kodak_5277', json.load(open(here / 'kodak_5277.json'))),
    ('fuji_velvia_50', from_velvia()),
    ('fuji_acros_ii', from_acros()),
    ('kodak_vision3_500t_5219', from_color('kodak_vision3_500t_5219')),
    ('kodak_vision3_200t_5213', from_color('kodak_vision3_200t_5213')),
    ('kodak_vision3_250d_5207', from_color('kodak_vision3_250d_5207')),
    ('kodak_vision3_50d_5203', from_color('kodak_vision3_50d_5203')),
    ('kodak_portra_160', from_color('kodak_portra_160')),
    ('kodak_portra_400', from_color('kodak_portra_400')),
    ('kodak_portra_800', from_color('kodak_portra_800')),
    ('kodak_ektar_100', from_color('kodak_ektar_100')),
    ('fuji_pro_400h', from_color('fuji_pro_400h')),
    ('kodak_ektachrome_e100', from_slide('kodak_ektachrome_e100')),
    ('fuji_velvia_100', from_slide('fuji_velvia_100')),
    ('kodak_tri_x_400', from_monochrome('kodak_tri_x_400', 'd76_8', 'D-76', 8.0, sensitivity='d_1_0')),
    ('kodak_tmax_100', from_monochrome('kodak_tmax_100', 'd76_7.5', 'D-76', 7.5, sensitivity='d_1_0')),
    # D-96, Kodak's motion picture negative developer, is a borax MQ developer of
    # D-76's kind: Double-X develops in D-76's place, for its sheet's 5 minutes.
    ('eastman_double_x_5222', from_monochrome('eastman_double_x_5222', 'd96_5', 'D-76', 5.0, sensitivity='above_fog_1_0')),
    # Ilfotec HC 1+31 is Ilford's HC-110 dilution B.
    ('ilford_hp5_plus', from_monochrome('ilford_hp5_plus', 'hc_1_31_6.5', 'HC-110 (B)', 6.5, spectrogram_kelvin=2850.0,
                                        spread_um=2.0, rms=16.0)),
    ('eastman_color_negative_5251', from_1960s()),
    ('eastman_color_negative_5254', from_5254()),
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
    ## Its grain's dye clouds: how far apart (µm) and how wide each (a Gaussian's
    ## σ in cells: smaller is crisper).
    pub var grain_cell: f64
    pub var grain_width: f64
    ## The process its sheet's curves were developed in ("": its kind's standard,
    ## film_develop.lucb) and for how long, in minutes (0: that process's table
    ## time).
    pub var process: str
    pub var minutes: f64
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
    ## Development kinetics (film_develop.lucb), relative to its normal
    ## development: per layer how near saturation grey's development runs
    ## (k·(t − t_i)), how the rate grows per log H (more latent image develops
    ## sooner), the induction time as a share of the normal time, and the fog
    ## gained per normal time (a reversal stock's first developer: the share of
    ## its unexposed silver halide).
    pub var saturation: f64[3]
    pub var rate_slope: f64[3]
    pub var induction: f64
    pub var fog_rate: f64[3]
    ## Reciprocity failure per layer (red first): q, p and t0 of the stops lost
    ## at a metered exposure of t seconds, q·log2(1 + (t / t0)^p) (film_exposure.lucb).
    pub var reciprocity: f64[9]
    ## The base under the emulsion: thickness (µm), refractive index, and the
    ## backing against halation (film_halation.lucb).
    pub var base_thickness: f64
    pub var base_index: f64
    pub var backing: i64

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
## as printing density (film_print.lucb; film_model.lucb reads a negative's by
## SMPTE RP 180), whose definition stands for the print's own spectral response:
## so its spectral sensitivity, though in its data, is not needed.
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
# Papers: black-and-white variable contrast (a curve per grade or filter) and
# color (RA-4: a curve per layer, Status A reflection density, and dyes).
PAPER_GRADES_MOST = 16
PAPER_STEP = 0.05


def paper_curves(data, graphs):
    """The named curves of `graphs` ((graph, curve name, grade) each) on one log
    exposure grid every 0.05, each held at its ends, rising."""
    lows = [min(q for q, v in zip(data[g]['log_h'], data[g][c]) if v is not None) for g, c, _ in graphs]
    highs = [max(q for q, v in zip(data[g]['log_h'], data[g][c]) if v is not None) for g, c, _ in graphs]
    grid = [round(min(lows) + PAPER_STEP * i, 4) for i in range(int(round((max(highs) - min(lows)) / PAPER_STEP)) + 1)]
    curves = []
    for g, c, _ in graphs:
        xs, ys = data[g]['log_h'], filled(data[g][c])
        pairs = [(x, y) for x, y in zip(xs, data[g][c]) if y is not None]
        first, last = pairs[0], pairs[-1]
        out = []
        for q in grid:
            v = first[1] if q <= first[0] else (last[1] if q >= last[0] else interp(xs, ys, q))
            out.append(max(v, out[-1]) if out else v)
        curves.append(out)
    return grid, curves


PAPERS = [
    # Ilford Multigrade IV RC: grades 00 (-1) to 5 by Multigrade filter.
    ('ilford_multigrade_iv_rc', 0, [('characteristic', 'grade_00', -1.0), ('characteristic', 'grade_0', 0.0), ('characteristic', 'grade_1', 1.0),
                                    ('characteristic', 'grade_2', 2.0), ('characteristic', 'grade_3', 3.0),
                                    ('grades_4_5', 'grade_4', 4.0), ('grades_4_5', 'grade_5', 5.0)]),
    # Kodak Polymax II RC: Polymax filters -1 to 5+, F surface in Dektol.
    ('kodak_polymax_ii_rc', 0, [('filters_m1_1.5_3.5', 'filter_minus1', -1.0), ('filters_0_2_4', 'filter_0', 0.0),
                                ('filters_0.5_2.5_4.5', 'filter_0.5', 0.5), ('characteristic', 'filter_1', 1.0),
                                ('filters_m1_1.5_3.5', 'filter_1.5', 1.5), ('filters_0_2_4', 'filter_2', 2.0),
                                ('filters_0.5_2.5_4.5', 'filter_2.5', 2.5), ('characteristic', 'filter_3', 3.0),
                                ('filters_m1_1.5_3.5', 'filter_3.5', 3.5), ('filters_0_2_4', 'filter_4', 4.0),
                                ('filters_0.5_2.5_4.5', 'filter_4.5', 4.5), ('characteristic', 'filter_5plus', 5.0)]),
    # Kodak Polycontrast IV RC: filters 1, 3 and 5+, F surface in Dektol.
    ('kodak_polycontrast_iv_rc', 0, [('characteristic', 'filter_1', 1.0), ('characteristic', 'filter_3', 3.0),
                                     ('characteristic', 'filter_5plus', 5.0)]),
    ('kodak_endura_premier', 1, [('characteristic', c, 0.0) for c in CHANNELS]),
    ('kodak_portra_endura', 1, [('characteristic', c, 0.0) for c in CHANNELS]),
    ('kodak_supra_endura', 1, [('characteristic', c, 0.0) for c in CHANNELS]),
]

body += f"""
## A photographic paper as its datasheet describes it, for prints viewed by
## reflection (film_paper.lucb). Black-and-white variable-contrast paper: a
## curve per grade (by filter); color paper: a curve per layer (red, green,
## blue: cyan-, magenta-, yellow-forming) and its dyes. Reflection density over
## base, over log exposure from `curve_first` every `curve_step` (relative where
## the sheet's axis is).
pub struct PaperStock:
    pub var name: str
    ## 0 black-and-white variable contrast, 1 color.
    pub var kind: i64
    pub var curve_first: f64
    pub var curve_step: f64
    pub var curve_count: usize
    pub var grade_count: usize
    pub var grades: f64[{PAPER_GRADES_MOST}]
    pub var curves: f64[{PAPER_GRADES_MOST * CURVE_MOST}]
    pub var dyes: f64[243]

pub let paper_count: usize = {len(PAPERS)}
"""
paper_funcs = []
for key, kind, graphs in PAPERS:
    data = json.load(open(here / f'{key}.json'))
    grid, curves = paper_curves(data, graphs)
    while len(grid) > CURVE_MOST:
        grid = grid[::2]
        curves = [c[::2] for c in curves]
    step = round(grid[1] - grid[0], 4)
    flat = sum((c + [c[-1]] * (CURVE_MOST - len(c)) for c in curves), [])
    grades = [g for _, _, g in graphs]
    dyes = sum((spectral(data['dyes']['nm'], data['dyes'][d], 0.0) for d in ('cyan', 'magenta', 'yellow')), []) if kind == 1 else [1.0] * 243
    body += f"""
## {data['name']}: {data['source']}
pub func {key}() -> PaperStock:
    return PaperStock(
        name = "{data['name']}",
        kind = {kind},
        curve_first = {number(grid[0])},
        curve_step = {number(step)},
        curve_count = {len(grid)},
        grade_count = {len(grades)},
        grades = {block(grades, PAPER_GRADES_MOST)},
        curves = {block(flat, PAPER_GRADES_MOST * CURVE_MOST)},
        dyes = {block(dyes, 243)})
"""
body += f"""
## Paper `at` (0-based in the Paper menu's order).
pub func paper_at(at: usize) -> PaperStock:
    return match at:
{chr(10).join(f"        {i} => {key}()" for i, (key, _, _) in enumerate(PAPERS[:-1]))}
        _ => {PAPERS[-1][0]}()
"""
(here.parents[1] / 'src/film_stocks.lucb').write_text(header + body)
print('wrote src/film_stocks.lucb:', ', '.join(d['name'] for _, d in STOCKS), '+', print_data['name'], '+', ', '.join(k for k, _, _ in PAPERS))
