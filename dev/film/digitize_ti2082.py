"""Digitize Kodak TI2082 (EXR 500T 5298) raster graphs by curve color, tracking runs per column.

    pdfimages -png 5298-ti2082.pdf f5298   # https://125px.com/docs/motionpicture/kodak/5298-ti2082.pdf
    digitize_ti2082.py DIR OUT.json         # DIR holds f5298-001.png .. f5298-005.png

Axis calibrations were read from each graph's gridlines; see the comments by each graph."""
from PIL import Image
import math, json, sys
COLOR = {'blue': (25, 34, 251), 'olive': (146, 145, 24), 'red': (255, 43, 6)}
def near(p, c, t=90): return sum(abs(a - b) for a, b in zip(p, c)) < t
def clusters(px, x, y0, y1, color):
    runs, start = [], None
    for y in range(y0, y1):
        if near(px[x, y], COLOR[color]):
            if start is None: start = y
        elif start is not None:
            runs.append((start + y - 1) / 2); start = None
    if start is not None: runs.append((start + y1 - 1) / 2)
    return runs
def track(px, color, x0, x1, y0, y1, seed=None, avoid=None):
    pts, last = {}, seed
    for x in range(x0, x1):
        cs = clusters(px, x, y0, y1, color)
        if avoid: cs = [c for c in cs if abs(c - avoid(x)) > 6]
        if not cs: continue
        c = min(cs, key=lambda c: abs(c - last)) if last is not None else cs[0]
        if pts and abs(c - last) > 25: continue
        pts[x] = c; last = c
    return pts
def resample(pts, xmap, ymap, xs):
    xy = sorted((xmap(x), ymap(y)) for x, y in pts.items())
    out = []
    for q in xs:
        v = None
        for (a, ya), (b, yb) in zip(xy, xy[1:]):
            if a <= q <= b:
                v = ya if b == a else ya + (yb - ya) * (q - a) / (b - a); break
        out.append(v)
    return out
d = sys.argv[1]; res = {}
# Characteristic curve: log H (lux s) -3..0 at 135.33 px/unit, density 0 at y 599, 0.2 per 30.14 px.
im = Image.open(d + '/f5298-002.png').convert('RGB'); px = im.load()
cx = lambda x: (x - 623) / 135.33; cy = lambda y: (599 - y) * 0.2 / 30.14
xs = [round(-2.95 + 0.05 * i, 2) for i in range(59)]
res['characteristic'] = {'log_h': xs}
seeds = {'red': 573, 'olive': 506, 'blue': 450}
for name, seed in seeds.items():
    res['characteristic'][name] = resample(track(px, name, 218, 640, 150, 600, seed), cx, cy, xs)
# Spectral sensitivity: 250 nm at x 133, 1.4898 px/nm; log S -1 at y 617, 113.5 px/unit.
im = Image.open(d + '/f5298-003.png').convert('RGB'); px = im.load()
sx = lambda x: 250 + (x - 133) / 1.4898; sy = lambda y: -1 + (617 - y) / 113.5
nm = list(range(380, 785, 5))
res['sensitivity'] = {'nm': nm}
for name, (x0, x1, seed) in {'blue': (360, 750, 228), 'olive': (450, 760, 551), 'red': (550, 820, 560)}.items():
    res['sensitivity'][name] = resample(track(px, name, x0, x1, 160, 600, seed), sx, sy, nm)
# Dye density: 250 nm at x 138, 1.4796 px/nm; density 0 at y 618, 182 px/unit.
im = Image.open(d + '/f5298-004.png').convert('RGB'); px = im.load()
dx = lambda x: 250 + (x - 138) / 1.4796; dy = lambda y: (618 - y) / 182.0
res['dye_density'] = {'nm': nm}
for name, seed in {'blue': 368, 'olive': 472}.items():
    res['dye_density'][name] = resample(track(px, name, 360, 870, 260, 616, seed), dx, dy, nm)
# MTF: log-log; 1 c/mm at x 121, 10 at 372, 100 at 622 (250.5 px/decade); response 1000% at 141, 100 at 294, 10 at 448, 1 at 602 (153.7 px/decade).
im = Image.open(d + '/f5298-001.png').convert('RGB'); px = im.load()
mx = lambda x: 10 ** ((x - 121) / 250.5); my = lambda y: 10 ** (3 - (y - 141) / 153.67)
freqs = [2.5, 3, 4, 5, 6, 8, 10, 12, 15, 20, 25, 30, 40, 50, 60, 70, 80, 90, 100]
res['mtf'] = {'cycles_per_mm': freqs}
for name, seed in {'blue': 296, 'olive': 296, 'red': 296}.items():
    res['mtf'][name] = resample(track(px, name, 215, 625, 260, 430, seed), mx, my, freqs)
# Granularity: log H rel 0..3 (0 = -3.0 abs) at x 202..622 (140 px/unit); sigma D log axis: 0.001 at y 601, 142 px/decade.
im = Image.open(d + '/f5298-005.png').convert('RGB'); px = im.load()
glx = lambda x: (x - 202) / 140.0 - 3.0; gy = lambda y: 10 ** (-3 + (601 - y) / 142.0)
ch = res['characteristic']
# The density axis: 0 at y 601, 3 at y 144 (152.3 px/unit).
def char_px(name):
    def f(x):
        q = glx(x)
        for a, b, va, vb in zip(ch['log_h'], ch['log_h'][1:], ch[name], ch[name][1:]):
            if va is not None and vb is not None and a <= q <= b:
                return 601 - (va + (vb - va) * (q - a) / (b - a)) * 152.33
        return -1000
    return f
gxs = [round(-2.9 + 0.1 * i, 2) for i in range(30)]
res['granularity'] = {'log_h': gxs}
for name, seed in {'blue': 383, 'olive': 432, 'red': 467}.items():
    res['granularity'][name] = resample(track(px, name, 203, 622, 300, 600, seed, avoid=char_px(name)), glx, gy, gxs)
json.dump(res, open(sys.argv[2], 'w'), indent=1)
for k, v in res.items():
    print(k)
    axis = list(v.keys())[0]
    for i, q in enumerate(v[axis]):
        print(' ', q, *[None if v[n][i] is None else round(v[n][i], 4) for n in list(v.keys())[1:]])
