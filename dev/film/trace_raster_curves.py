#!/usr/bin/env python3
"""Trace black curves on Kodak's raster datasheet graphs (2383's), column by column.

    pdfimages -png KODAK-VISION-Color-Print-Film-2383-3383-data-sheet.pdf g
    trace_raster_curves.py DIR      # DIR holds g-002.png, g-007.png, g-008.png

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


def load(path, threshold=135):
    image = Image.open(path).convert('L')
    pixels = image.load()
    return image.size, (lambda x, y: pixels[x, y] < threshold)


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


if __name__ == '__main__':
    folder = Path(sys.argv[1])
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

    def resample(points, xs):
        points = sorted(points)
        out = []
        for q in xs:
            v = None
            for (a, ya), (b, yb) in zip(points, points[1:]):
                if a <= q <= b and b - a < 0.2 * max(1, abs(q)):
                    v = ya if b == a else ya + (yb - ya) * (q - a) / (b - a)
                    break
            out.append(None if v is None else round(v, 4))
        return out
    grid = [round(-1.0 + 0.05 * i, 2) for i in range(73)]
    starts = {'blue': -1.0, 'green': -0.25, 'red': 0.0}
    characteristic = {'log_h': grid}
    for name in ('red', 'green', 'blue'):
        characteristic[name] = [v if q >= starts[name] else None for q, v in zip(grid, resample(char[name], grid))]
    nm = list(range(380, 785, 5))
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
