#!/usr/bin/env python3
"""Read the curves out of Kodak datasheets whose graphs are vector paths, exactly, into
dev/film/<stock>.json (the format make_stocks.py reads).

    read_vector_sheets.py DIR     # DIR holds 5293.pdf, 5279.pdf and 5277.pdf from
                                  # https://125px.com/docs/motionpicture/kodak/

Each graph is a frame on a page with two reference points per axis (tick marks or
label centres read off the PDF); its curves are the strokes inside the frame, named
here by index after surveying them (the order PyMuPDF draws them in). Granularity is
drawn over a relative log exposure next to its own copy of the characteristic
curves, which place it on the main curves' log H; its σD is read on the graph's
right-hand log scale. Needs PyMuPDF."""
import json, math, sys
from pathlib import Path
import pymupdf

here = Path(__file__).resolve().parent


def strokes(page, frame, x_axis, y_axis, log_x=False, log_y=False):
    """The continuous strokes inside `frame`, in axis units, joined where ends meet."""
    x0, y0, x1, y1 = frame
    def axis(p0, v0, p1, v1, log):
        if log:
            a, b = math.log10(v0), math.log10(v1)
            return lambda p: 10 ** (a + (p - p0) * (b - a) / (p1 - p0))
        return lambda p: v0 + (p - p0) * (v1 - v0) / (p1 - p0)
    X = axis(*x_axis, log_x)
    Y = axis(*y_axis, log_y)
    out = []
    for d in page.get_drawings():
        r = d['rect']
        if r.x0 < x0 - 1 or r.x1 > x1 + 1 or r.y0 < y0 - 1 or r.y1 > y1 + 1:
            continue
        current, last = [], None
        def flush():
            if len(current) >= 2:
                xs = [p[0] for p in current]; ys = [p[1] for p in current]
                if max(xs) - min(xs) > 0.5 and max(ys) - min(ys) > 0.5:
                    out.append([(X(px), Y(py)) for px, py in current])
        for item in d['items']:
            points = [p for p in item[1:] if hasattr(p, 'x')]
            if not points:
                continue
            start, end = points[0], points[-1]
            if last is None or abs(start.x - last.x) > 0.05 or abs(start.y - last.y) > 0.05:
                flush()
                current = [(start.x, start.y)]
            if item[0] == 'c':
                p0, p1, p2, p3 = points
                for k in range(1, 9):
                    t = k / 8
                    a, b, c, e = (1 - t) ** 3, 3 * (1 - t) ** 2 * t, 3 * (1 - t) * t * t, t ** 3
                    current.append((a * p0.x + b * p1.x + c * p2.x + e * p3.x, a * p0.y + b * p1.y + c * p2.y + e * p3.y))
            else:
                current.append((end.x, end.y))
            last = end
        flush()
    # Join strokes whose ends meet.
    merged = True
    while merged:
        merged = False
        for i in range(len(out)):
            for j in range(len(out)):
                if i != j and out[i] and out[j]:
                    a, b = out[i][-1], out[j][0]
                    if abs(a[0] - b[0]) < 0.02 * max(1, abs(a[0])) and abs(a[1] - b[1]) < 0.02 * max(1, abs(a[1])):
                        out[i] += out[j][1:]
                        out[j] = []
                        merged = True
        out = [c for c in out if c]
    return [c for c in out if len(c) >= 4]


def sampled(curve, xs):
    """`curve` (x rising, or made so) at `xs`, linearly; None outside."""
    pts = sorted(curve)
    out = []
    for q in xs:
        v = None
        for (a, ya), (b, yb) in zip(pts, pts[1:]):
            if a <= q <= b:
                v = ya if b == a else ya + (yb - ya) * (q - a) / (b - a)
                break
        out.append(v)
    return out


def steps(first, last, step):
    n = int(math.floor((last - first) / step + 1e-9)) + 1
    return [round(first + step * i, 4) for i in range(n)]


# Per sheet: each graph's page, frame, axis references and which stroke is which.
SHEETS = {
    'kodak_5293': {
        'pdf': '5293.pdf', 'name': 'Kodak EXR 200T 5293', 'source': 'Kodak H-1-5293t (August 2003)',
        'ei': 200, 'kelvin': 3200.0,
        # Normal exposure: the Camera-Stops scale's 0, at log H -1.274.
        'grey_log_h': -1.274,
        'characteristic': (2, [96.1, 431.2, 280.3, 615.8], (126.83, -3, 218.88, 0), (554.29, 1, 432.52, 3), {'blue': 0, 'green': 1, 'red': 2}),
        'mtf': (2, [357.8, 62.2, 560.4, 215.1], (357.7, 1, 492.7, 100), (213.9, 1, 112.8, 100), {'blue': 1, 'green': 2, 'red': 3}),
        'granularity': (3, [69.5, 71.3, 254.9, 255.8], (115.88, 1, 208.53, 3), (254.3, 0, 69.7, 3),
                        {'blue': 0, 'green': 1, 'red': 2}, {'blue': 3, 'green': 4, 'red': 5}, (255.8, 140.8)),
        'sensitivity': (3, [74.3, 420.7, 274.8, 572.1], (74.4, 250, 276.1, 750), (570.4, -1, 421.7, 3), {'blue': 1, 'green': 2, 'red': 3}),
        'dyes': (3, [357.6, 62.0, 541.9, 246.5], (376.0, 350, 523.48, 750), (246.4, 0, 61.5, 1.8), [0, 1, 2], {'neutral': 3, 'd_min': 4}),
    },
    'kodak_5279': {
        'pdf': '5279.pdf', 'name': 'Kodak Vision 500T 5279', 'source': 'Kodak H-1-5279 (March 1996)',
        'ei': 500, 'kelvin': 3200.0,
        # Normal exposure ("N", an 18% grey card) on the camera-stop scale, at log H -1.744.
        'grey_log_h': -1.744,
        'characteristic': (1, [359.4, 461.5, 542.4, 598.9], (365.78, -4, 516.52, 0), (598.6, 0, 460.6, 3), {'blue': 0, 'green': 1, 'red': 2}),
        'mtf': (1, [359.4, 149.9, 541.5, 287.6], (359.8, 1, 490.7, 100), (286.4, 1, 166.2, 100), {'blue': 1, 'green': 0, 'red': 2}),
        'granularity': (1, [79.8, 454.9, 235.0, 610.2], (79.7, 0, 235.5, 4), (610.3, 0, 454.2, 3),
                        {'blue': 2, 'green': 1, 'red': 4}, {'blue': 3, 'green': 0, 'red': 5}, (608.0, 511.6)),
        'sensitivity': (2, [95.5, 127.3, 275.8, 263.6], (96.0, 250, 276.3, 750), (263.2, -2, 126.6, 2), {'blue': 2, 'green': 1, 'red': 0}),
        'dyes': (2, [95.5, 432.7, 275.8, 569.1], (96.0, 300, 275.3, 800), (545.9, 0, 432.0, 1.0), [0, 1, 2], {}),
    },
    'kodak_5277': {
        'pdf': '5277.pdf', 'name': 'Kodak Vision 320T 5277', 'source': 'Kodak H-1-5277t',
        'ei': 320, 'kelvin': 3200.0,
        # Normal exposure: the camera-stop scale's N, midway between its -2 and 2, at log H -1.499.
        'grey_log_h': -1.499,
        'characteristic': (3, [73.5, 502.5, 277.0, 655.1], (94.05, -4, 264.36, 0), (654.8, 0, 501.5, 3), {'blue': 2, 'green': 0, 'red': 1}),
        'mtf': (3, [72.2, 158.3, 274.7, 311.3], (72.5, 1, 218.2, 100), (310.0, 1, 176.4, 100), {'blue': 1, 'green': 2, 'red': 0}),
        'granularity': (2, [358.7, 247.7, 535.7, 420.3], (359.0, 0, 532.0, 4), (420.4, 0, 246.9, 3),
                        {'blue': 5, 'green': 3, 'red': 4}, {'blue': 2, 'green': 1, 'red': 0}, (417.8, 310.7)),
        'sensitivity': (3, [349.7, 121.2, 550.1, 272.5], (350.3, 250, 550.7, 750), (271.2, 0, 121.9, 4), {'blue': 2, 'green': 1, 'red': 0}),
        'dyes': (3, [360.0, 380.0, 545.0, 540.0], (357.3, 300, 541.1, 800), (535.4, 0, 370.0, 1.8), [1, 3, 4], {'neutral': 0, 'd_min': 2}),
    },
}

NM = list(range(380, 785, 5))
CHANNELS = ('red', 'green', 'blue')


def read_sheet(folder, spec):
    doc = pymupdf.open(folder / spec['pdf'])
    out = {'name': spec['name'], 'source': spec['source'] + ', vector graphs read by dev/film/read_vector_sheets.py',
           'ei': spec['ei'], 'kelvin': spec['kelvin'], 'grey_log_h': spec['grey_log_h']}
    # Characteristic curves on 0.05 log H over the range all three cover.
    page, frame, xr, yr, names = spec['characteristic']
    curves = strokes(doc[page], frame, xr, yr)
    first = max(min(p[0] for p in curves[i]) for i in names.values())
    last = min(max(p[0] for p in curves[i]) for i in names.values())
    grid = steps(math.ceil(first / 0.05) * 0.05, last, 0.05)
    out['characteristic'] = {'log_h': grid, **{n: sampled(curves[names[n]], grid) for n in CHANNELS}}
    # MTF, at the frequencies all three reach.
    page, frame, xr, yr, names = spec['mtf']
    curves = strokes(doc[page], frame, xr, yr, True, True)
    top = min(max(p[0] for p in curves[i]) for i in names.values())
    freqs = [f for f in (3, 4, 5, 6, 8, 10, 12, 15, 20, 25, 30, 40, 50, 60, 70, 80, 100, 125, 150, 200) if f <= top]
    out['mtf'] = {'cycles_per_mm': freqs, **{n: sampled(curves[names[n]], freqs) for n in CHANNELS}}
    # Granularity: place the graph's own characteristic curves on the main ones (the
    # log H shift that best overlays them), then read σD on the right-hand scale.
    page, frame, xr, yr, characteristic, grain, (sigma_low, sigma_high) = spec['granularity']
    curves = strokes(doc[page], frame, xr, yr)
    main = out['characteristic']
    best, shift = 1e9, 0.0
    for k in range(-500, 501):
        s = -4.0 + k * 0.01
        err, n = 0.0, 0
        for c in CHANNELS:
            moved = [(x + s, y) for x, y in curves[characteristic[c]]]
            for q, v in zip(main['log_h'], sampled(moved, main['log_h'])):
                if v is not None:
                    err += (v - main[c][main['log_h'].index(q)]) ** 2
                    n += 1
        if n > 30 and err / n < best:
            best, shift = err / n, s
    y_pt = lambda density: yr[0] + (density - yr[1]) * (yr[2] - yr[0]) / (yr[3] - yr[1])
    sigma = lambda density: 10 ** (-3 + 2 * (sigma_low - y_pt(density)) / (sigma_low - sigma_high))
    lows = [min(p[0] for p in curves[grain[c]]) + shift for c in CHANNELS]
    highs = [max(p[0] for p in curves[grain[c]]) + shift for c in CHANNELS]
    grid = steps(math.ceil(max(lows) / 0.1) * 0.1, min(highs), 0.1)
    out['granularity'] = {'log_h': grid, 'shift': round(shift, 3),
                          **{c: [sigma(v) for v in sampled([(x + shift, y) for x, y in curves[grain[c]]], grid)] for c in CHANNELS}}
    # Spectral sensitivity (log), each layer where Kodak draws it.
    page, frame, xr, yr, names = spec['sensitivity']
    curves = strokes(doc[page], frame, xr, yr)
    out['sensitivity'] = {'nm': NM, **{n: sampled(curves[names[n]], NM) for n in CHANNELS}}
    # Dyes, peak-normalized, named by where they peak; the neutral and D-min where drawn.
    page, frame, xr, yr, dyes, others = spec['dyes']
    curves = strokes(doc[page], frame, xr, yr)
    by_peak = sorted(dyes, key=lambda i: max(curves[i], key=lambda p: p[1])[0])
    out['dyes'] = {'nm': NM, **{name: sampled(curves[i], NM) for name, i in zip(('yellow', 'magenta', 'cyan'), by_peak)}}
    for name, i in others.items():
        out[name] = {'nm': NM, 'density': sampled(curves[i], NM)}
    return out


if __name__ == '__main__':
    folder = Path(sys.argv[1])
    for key, spec in SHEETS.items():
        data = read_sheet(folder, spec)
        (here / f'{key}.json').write_text(json.dumps(data, indent=1))
        c = data['characteristic']
        print(f"{key}: log H {c['log_h'][0]}..{c['log_h'][-1]}, granularity shift {data['granularity']['shift']}, "
              f"MTF to {data['mtf']['cycles_per_mm'][-1]} c/mm")
