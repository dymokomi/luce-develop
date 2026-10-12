#!/usr/bin/env python3
"""Trace curves on raster datasheet graphs, column by column: Kodak 2383's,
Fujifilm Velvia 50's and Neopan 100 Acros II's.

    pdfimages -png KODAK-VISION-Color-Print-Film-2383-3383-data-sheet.pdf g
    trace_raster_curves.py 2383 DIR     # DIR holds g-002.png, g-007.png, g-008.png
    pdfimages -f 8 -l 8 -png FV504P_Datenblatt_e.pdf v       # Velvia 50 (AF3-0221E2)
    trace_raster_curves.py velvia DIR   # v-000.png .. v-003.png (white lines on black)
    pdfimages -f 3 -l 3 -png NEOPAN_100_ACROSII_120_data_sheet.pdf a
    trace_raster_curves.py acros DIR    # a-014.png (spectrogram), a-018.png (D-76)

A curve starts at a point on it (pixels) and is followed both ways: in each column
the dark run nearest the position its recent slope predicts, so crossing curves
and gridlines are stepped over. Gridline columns are skipped (the curve carried
on its slope) and gridline rows ignored. Writes char.json, sens.json and
dyes.json beside the images, in axis units. Each graph's calibration was read off
its frame and tick marks (the dye graph's printed wavelength labels sit off its
ticks; the ticks, 250–750 nm, are used). Needs Pillow."""
import json, sys
from pathlib import Path
from PIL import Image


def load(path, threshold=135, light_lines=False):
    image = Image.open(path).convert('L')
    pixels = image.load()
    if light_lines:
        return image.size, (lambda x, y: pixels[x, y] > 255 - threshold)
    return image.size, (lambda x, y: pixels[x, y] < threshold)


def band(lines, half=4):
    """The pixel rows or columns within `half` of each gridline."""
    out = set()
    for line in lines:
        out |= set(range(int(line) - half, int(line) + half + 1))
    return out


def start_on(dark, x, y_lo, y_hi, near):
    """The centre of the dark run in column `x` nearest `near`."""
    return min(((a + b) / 2 for a, b in runs(dark, x, y_lo, y_hi)), key=lambda c: abs(c - near))


def resample(points, xs, gap=0.2):
    points = sorted(points)
    out = []
    for q in xs:
        v = None
        for (a, ya), (b, yb) in zip(points, points[1:]):
            if a <= q <= b and b - a < gap * max(1, abs(q)):
                v = ya if b == a else ya + (yb - ya) * (q - a) / (b - a)
                break
        out.append(None if v is None else round(v, 4))
    return out


NM = list(range(380, 785, 5))


def runs(dark, x, y0, y1):
    out, start = [], None
    for y in range(y0, y1):
        if dark(x, y):
            if start is None:
                start = y
        elif start is not None:
            out.append((start, y - 1))
            start = None
    if start is not None:
        out.append((start, y1 - 1))
    return out


def track(dark, x0, y0, x_lo, x_hi, y_lo, y_hi, skip_cols=(), tol=5.0, max_gap=12, slope0=0.0, skip_rows=()):
    points = {x0: y0}
    for direction in (1, -1):
        y, slope, gap, x = float(y0), slope0 * direction, 0, x0
        while True:
            x += direction
            if x <= x_lo or x >= x_hi:
                break
            predicted = y + slope
            if x in skip_cols:
                y = predicted
                continue
            candidates = [r for r in runs(dark, x, y_lo, y_hi) if not all(yy in skip_rows for yy in range(r[0], r[1] + 1))]
            best, distance = None, 1e9
            for a, b in candidates:
                position = min(max(predicted, a), b)
                if abs(position - predicted) < distance:
                    best, distance = position, abs(position - predicted)
            if best is not None and distance <= tol + abs(slope) * 0.8:
                slope = 0.6 * slope + 0.4 * (best - y)
                y = best
                gap = 0
                points[x] = y
            else:
                gap += 1
                y = predicted
                if gap > max_gap:
                    break
    return points


def to_axis(points, xmap, ymap):
    return sorted((xmap(x), ymap(y)) for x, y in points.items())


def trace_2383(folder):
    # Characteristic curves: log H -3..3 over x 69.5..453.5, density 0..6 over y 438.5..54.
    _, dark = load(folder / 'g-002.png')
    xmap = lambda x: -3.0 + (x - 69.5) / 64.0
    ymap = lambda y: (438.5 - y) / 64.08
    row = int(round(438.5 - 2.0 * 64.08))
    char = {name: to_axis(track(dark, x0, row, 71, 452, 56, 437, slope0=-3.0), xmap, ymap)
            for name, x0 in (('blue', 301), ('green', 321), ('red', 341))}
    json.dump(char, open(folder / 'char.json', 'w'))
    # Spectral sensitivity: 250..750 nm over x 58.5..392.5, log S 1..-3 over y 39.5..292.
    _, dark = load(folder / 'g-007.png', threshold=120)
    columns = {58, 59, 92, 125, 126, 158, 159, 192, 225, 226, 259, 292, 293, 325, 326, 359, 392, 393}
    rows = {39, 40, 41, 102, 103, 104, 165, 166, 167, 228, 229, 230, 231, 291, 292, 293}
    xmap = lambda x: 250 + (x - 58.5) / 0.668
    ymap = lambda y: (103 - y) / 63.0
    sens = {}
    for name, x0, y0 in (('blue', 205, 62.0), ('green', 258, 115.5), ('red', 352, 172.5)):
        if name == 'blue':
            y0 = min(((a + b) / 2 for a, b in runs(dark, x0, 41, 291)), key=lambda c: abs(c - y0))
        sens[name] = to_axis(track(dark, x0, y0, 60, 391, 41, 291, skip_cols=columns, tol=4.0, max_gap=8, skip_rows=rows), xmap, ymap)
    json.dump(sens, open(folder / 'sens.json', 'w'))
    # Dyes: 250..750 nm over the ticks at x 64..370, density 0..1.4 over y 343..36.
    _, dark = load(folder / 'g-008.png', threshold=120)
    xmap = lambda x: 250 + (x - 64.0) / 0.612
    ymap = lambda y: (343 - y) / 219.3
    dyes = {name: to_axis(track(dark, x0, y0, 65, 369, 50, 342, tol=2.5, max_gap=14), xmap, ymap)
            for name, x0, y0 in (('yellow', 185, 164.5), ('magenta', 244, 150.5), ('cyan', 315, 104.5), ('neutral', 244, 97.5))}
    json.dump(dyes, open(folder / 'dyes.json', 'w'))

    grid = [round(-1.0 + 0.05 * i, 2) for i in range(73)]
    starts = {'blue': -1.0, 'green': -0.25, 'red': 0.0}
    characteristic = {'log_h': grid}
    for name in ('red', 'green', 'blue'):
        characteristic[name] = [v if q >= starts[name] else None for q, v in zip(grid, resample(char[name], grid))]
    nm = NM
    limits = {'blue': (360, 505), 'green': (450, 580), 'red': (588, 730)}
    sensitivity = {'nm': nm}
    for name in ('red', 'green', 'blue'):
        lo, hi = limits[name]
        sensitivity[name] = [v if lo <= q <= hi else None for q, v in zip(nm, resample(sens[name], nm))]
    densities = {'nm': nm}
    for name in ('cyan', 'magenta', 'yellow', 'neutral'):
        densities[name] = [None if (v is None or q < 355) else max(0.0, v) for q, v in zip(nm, resample(dyes[name], nm))]
    data = {
        'name': 'Kodak Vision Color Print Film 2383',
        'source': "Kodak VISION Color Print Film 2383/3383 data sheet (TI2397, 2022): raster graphs traced by dev/film/trace_raster_curves.py. "
                  "Characteristic curves 1/500 s tungsten, ECP-2D, Status A; spectral sensitivity at D = 1.0 (UV branches left out: printers "
                  "filter UV); dyes normalized to a visual neutral of 1.0 under a xenon-arc projector, with that neutral. The dye graph's printed "
                  "wavelength labels sit off its tick marks; the ticks (250-750 nm) are used.",
        'characteristic': characteristic, 'sensitivity': sensitivity, 'dyes': densities,
    }
    json.dump(data, open(Path(__file__).resolve().parent / 'kodak_2383.json', 'w'), indent=1)


def trace_velvia(folder):
    """Velvia 50: four 600 dpi scans, white lines on black. Calibrations from gridlines."""
    # Characteristic (Status A): log H -3 at x 226, 0.5 per 184.2 px; density 0 at y 1511.5, 0.5 per 184.2 px.
    _, lit = load(folder / 'v-002.png', light_lines=True)
    columns = band([226, 408, 593.5, 774, 961, 1143.5, 1329, 1513, 1696, 1878.5], 3)
    rows = band([39, 403.5, 586.5, 772, 955.5, 1142.5, 1326.5, 1511.5], 3)
    xmap = lambda x: -3.0 + (x - 226) / 368.4
    ymap = lambda y: (1511.5 - y) / 368.4
    char = {}
    for name, density in (('red', 3.33), ('green', 3.79), ('blue', 3.68)):
        y0 = start_on(lit, 300, 45, 1500, 1511.5 - density * 368.4)
        char[name] = to_axis(track(lit, 300, y0, 232, 1870, 45, 1505, skip_cols=columns, tol=6.0, max_gap=40, skip_rows=rows), xmap, ymap)
    # Spectral sensitivity: 400 nm at x 285.5, 4.8235 px/nm; log S 0 at y 1006.5, 480.25 px per unit.
    _, lit = load(folder / 'v-003.png', light_lines=True)
    columns = band([192.5, 285.5, 769, 1254.5, 1732.5, 1819])
    rows = band([47.5, 524.5, 1006.5, 1488])
    xmap = lambda x: 400 + (x - 285.5) / 4.8235
    ymap = lambda y: (1006.5 - y) / 480.25
    sens = {}
    for name, nm, log_s in (('blue', 420, 0.56), ('green', 550, 0.55), ('red', 650, 0.55)):
        x0 = int(285.5 + (nm - 400) * 4.8235)
        y0 = start_on(lit, x0, 50, 1600, 1006.5 - log_s * 480.25)
        sens[name] = to_axis(track(lit, x0, y0, 196, 1815, 50, 1600, skip_cols=columns, tol=6.0, max_gap=30, skip_rows=rows), xmap, ymap)
    # Dyes: 400 nm at x 287, 4.803 px/nm; density 0 at y 1218.5, 958.5 px per unit.
    _, lit = load(folder / 'v-001.png', light_lines=True)
    columns = band([192, 287, 766, 1248, 1728, 1821.5])
    rows = band([18.5, 260, 740.5, 1218.5])
    xmap = lambda x: 400 + (x - 287) / 4.803
    ymap = lambda y: (1218.5 - y) / 958.5
    dyes = {}
    for name, nm in (('yellow', 450), ('magenta', 545), ('cyan', 660)):
        x0 = int(287 + (nm - 400) * 4.803)
        y0 = start_on(lit, x0, 25, 1420, 1218.5 - 958.5)
        dyes[name] = to_axis(track(lit, x0, y0, 196, 1818, 25, 1425, skip_cols=columns, tol=5.0, max_gap=30, skip_rows=rows), xmap, ymap)
    # MTF, log-log: 1 c/mm at x 204, 668 px per decade; 100% at y 168.5, 663.5 px per decade.
    _, lit = load(folder / 'v-000.png', light_lines=True)
    columns = band([204, 667, 872, 1071, 1337, 1536, 1737])
    rows = band([51, 168.5, 265, 368, 541.5, 634, 832, 939, 1034, 1281])
    mtf = to_axis(track(lit, 920, start_on(lit, 920, 30, 600, 120), 210, 1730, 30, 1450, skip_cols=columns, tol=6.0, max_gap=30, skip_rows=rows),
                  lambda x: 10 ** ((x - 204) / 668.0), lambda y: 10 ** (2 + (168.5 - y) / 663.5))
    # The three characteristic curves run as one from about density 3.0 down; the
    # dashed green and blue are traced through their shoulders only, then join red.
    grid = [round(-2.8 + 0.05 * i, 2) for i in range(78)]
    red = resample(char['red'], grid)
    characteristic = {'log_h': grid, 'red': red}
    for name in ('green', 'blue'):
        own = resample(char[name], grid)
        last = max(i for i, v in enumerate(own) if v is not None)
        join = grid.index(-1.5)
        values = []
        for i, q in enumerate(grid):
            if i <= last:
                values.append(own[i])
            elif i < join:
                t = (i - last) / (join - last)
                values.append(round(own[last] * (1 - t) + red[join] * t, 4))
            else:
                values.append(red[i])
        characteristic[name] = values
    frequencies = [2, 3, 4, 5, 6, 8, 10, 12, 15, 20, 25, 30, 40, 50, 60]
    response = resample(mtf, frequencies, 0.5)
    data = {
        'name': 'Fujifilm Velvia 50', 'kind': 'reversal', 'ei': 50, 'kelvin': 5500.0,
        'source': "Fujifilm Product Information Bulletin, FUJICHROME Velvia 50 Professional [RVP50] (Ref. AF3-0221E2): its 600 dpi graphs "
                  "traced by dev/film/trace_raster_curves.py. Characteristic curves daylight, E-6, Status A (the dashed green and blue "
                  "traced through their shoulders and joined to red where the three run as one, from about density 3.0 down); spectral "
                  "sensitivity at 1.0 over D-min; dyes from separated exposures; one MTF curve; diffuse rms granularity 9 at 1.0 over "
                  "D-min (48 um).",
        'characteristic': characteristic,
        'sensitivity': {'nm': NM, **{n: resample(sens[n], NM) for n in ('red', 'green', 'blue')}},
        'dyes': {'nm': NM, **{n: [None if v is None else max(0.0, v) for v in resample(dyes[n], NM)] for n in ('cyan', 'magenta', 'yellow')}},
        'mtf': {'cycles_per_mm': frequencies, 'red': response, 'green': response, 'blue': response},
        'rms_granularity': 0.009,
    }
    json.dump(data, open(Path(__file__).resolve().parent / 'fuji_velvia_50.json', 'w'), indent=1)


def trace_acros(folder):
    """Acros II: D-76 characteristic curves (4, 7, 10 min) and the spectrogram to 5400 K daylight."""
    # D-76: log H -3 at x 269, 151 px per unit; density 0 at y 555, 151.3 px per unit.
    _, dark = load(folder / 'a-018.png', threshold=128)
    columns = band([118.0, 193.5, 269.0, 345.0, 420.5, 496.0, 571.5, 647.0, 723.5, 798.5, 874.0], 3)
    rows = band([101.0, 177.0, 252.0, 328.0, 404.0, 480.0, 555.0], 3)
    xmap = lambda x: -3.0 + (x - 269.0) / 151.0
    ymap = lambda y: (555.0 - y) / 151.3
    char = {name: to_axis(track(dark, 700, y0, 120, 872, 105, 553, skip_cols=columns, tol=3.0, max_gap=20, skip_rows=rows, slope0=-0.7), xmap, ymap)
            for name, y0 in (('d76_10', 297.0), ('d76_7', 343.5), ('d76_4', 393.0))}
    # The spectrogram: 400 nm at x 130, 2.115 px/nm; 1.0 log between y 477 and 270.
    _, dark = load(folder / 'a-014.png', threshold=128)
    columns = band([90.5, 130.0, 341.5, 553.0, 764.5, 806.0], 3)
    rows = band([270.0, 477.0, 683.5, 63.0], 3)
    x0 = int(130 + 80 * 2.115)
    spectrogram = to_axis(track(dark, x0, runs(dark, x0, 280, 470)[0][0] + 1.0, 132, 800, 280, 680, skip_cols=columns, tol=4.0, max_gap=20, skip_rows=rows),
                          lambda x: 400 + (x - 130.0) / 2.115, lambda y: (477.0 - y) / 207.0)
    grid = [round(-3.25 + 0.05 * i, 2) for i in range(77)]
    curves = {name: resample(points, grid) for name, points in char.items()}
    data = {
        'name': 'Fujifilm Neopan 100 Acros II', 'kind': 'monochrome', 'ei': 100, 'kelvin': 5400.0,
        'source': "Fujifilm NEOPAN 100 ACROS II data sheet: its graphs traced by dev/film/trace_raster_curves.py. Characteristic curves "
                  "D-76 at 20 C for 4, 7 and 10 min (7 used); the spectrogram to 5400 K daylight (the film's sensitivity times that light, "
                  "relative); diffuse rms granularity 7 at 1.0 over D-min (Microfine). No MTF is published.",
        'characteristic': {'log_h': grid, **curves},
        'spectrogram': {'nm': NM, 'log': resample(spectrogram, NM)},
        'rms_granularity': 0.007,
    }
    json.dump(data, open(Path(__file__).resolve().parent / 'fuji_acros_ii.json', 'w'), indent=1)


if __name__ == '__main__':
    which, folder = sys.argv[1], Path(sys.argv[2])
    {'2383': trace_2383, 'velvia': trace_velvia, 'acros': trace_acros}[which](folder)
