#!/usr/bin/env python3
"""Read a datasheet's vector graphs into dev/film/<stock>.json (the form
make_stocks.py reads), naming each curve by the index of its drawing on the page
(survey a page with `read_drawings.py --survey PDF PAGE`: every drawing's index,
color and box, and every text span's centre, so the tick labels give the axes).

    read_drawings.py SHEETS_DIR [STOCK ...]   # writes the JSONs and, beside them in
                                              # SHEETS_DIR/checks/, each graph's page
                                              # with what was read drawn back on it

A stock's spec (STOCKS, in any sheets_*.py beside this file) gives, per graph:
the page, two (point, value) references per axis read off its tick labels'
centres, whether an axis is logarithmic, and each curve as a drawing's index (all
its pieces), "index:piece" (one piece, as the survey numbers them),
"index@first-last" (a run of its path items, where one path draws two curves),
or a list of those joined. Needs PyMuPDF (and Pillow for the checks).

    STOCKS = {'kodak_portra_400': {
        'pdf': 'portra_400/e4050.pdf', 'name': 'Kodak Portra 400', 'source': 'Kodak E-4050 (1-25)',
        'kind': 'negative', 'ei': 400, 'kelvin': 5500.0, 'grey_log_h': -1.44,
        'characteristic': {'page': 3, 'x': ((79.6, -4.0), (266.0, 1.0)), 'y': ((287.8, 0.0), (102.9, 4.0)),
                           'curves': {'blue': 34, 'green': 35, 'red': 36}},
        ...}}

Graphs: characteristic (log H, density: red, green, blue; for black and white,
any names, such as 'd76_6.75'), 'extras' (more such graphs by name: push
curves, other developers), sensitivity (nm, log
sensitivity), dyes (nm, density: cyan, magenta, yellow, and neutral or d_min),
mtf (log c/mm, log %), granularity (log H, σD; 'shift' moves it onto the
characteristic curves' log H; or 'copy', the graph's own characteristic curves,
read on its density axis 'density_y', finds it). A stock without one gives
'rms_granularity' (diffuse rms × 1000 at density 1.0) instead."""
import json, math, sys
from pathlib import Path
import pymupdf

here = Path(__file__).resolve().parent
NM = list(range(380, 785, 5))
CHANNELS = ('red', 'green', 'blue')


def axis(ref, log):
    (p0, v0), (p1, v1) = ref
    if log:
        a, b = math.log10(v0), math.log10(v1)
        return lambda p: 10 ** (a + (p - p0) * (b - a) / (p1 - p0))
    return lambda p: v0 + (p - p0) * (v1 - v0) / (p1 - p0)


def subpaths(page, index):
    """Drawing `index`'s pieces (a new one wherever the pen lifts) as points on
    the page, curves sampled every 1/8."""
    d = page.get_drawings()[index]
    pieces, points = [], []
    for item in d['items']:
        ps = [p for p in item[1:] if hasattr(p, 'x')]
        if not ps:
            continue
        if points and (abs(points[-1][0] - ps[0].x) > 0.05 or abs(points[-1][1] - ps[0].y) > 0.05):
            pieces.append(points)
            points = []
        if not points:
            points.append((ps[0].x, ps[0].y))
        if item[0] == 'c':
            p0, p1, p2, p3 = ps
            for k in range(1, 9):
                t = k / 8
                a, b, c, e = (1 - t) ** 3, 3 * (1 - t) ** 2 * t, 3 * (1 - t) * t * t, t ** 3
                points.append((a * p0.x + b * p1.x + c * p2.x + e * p3.x, a * p0.y + b * p1.y + c * p2.y + e * p3.y))
        else:
            points.append((ps[-1].x, ps[-1].y))
    if points:
        pieces.append(points)
    return pieces


def drawing_points(page, which):
    """The points of `which`: a drawing's index (all its pieces), "index:piece",
    or "index@first-last", a run of the drawing's path items (where one
    unbroken path draws two curves)."""
    if isinstance(which, str) and '@' in which:
        index, span = which.split('@')
        first, last = (int(v) for v in span.split('-'))
        points = []
        for item in page.get_drawings()[int(index)]['items'][first:last + 1]:
            ps = [p for p in item[1:] if hasattr(p, 'x')]
            if not points:
                points.append((ps[0].x, ps[0].y))
            if item[0] == 'c':
                p0, p1, p2, p3 = ps
                for k in range(1, 9):
                    t = k / 8
                    a, b, c, e = (1 - t) ** 3, 3 * (1 - t) ** 2 * t, 3 * (1 - t) * t * t, t ** 3
                    points.append((a * p0.x + b * p1.x + c * p2.x + e * p3.x, a * p0.y + b * p1.y + c * p2.y + e * p3.y))
            else:
                points.append((ps[-1].x, ps[-1].y))
        return points
    if isinstance(which, str):
        index, piece = (int(v) for v in which.split(':'))
        return subpaths(page, index)[piece]
    return [p for piece in subpaths(page, which) for p in piece]


def curve(page, graph, which):
    """Curve `which` of `graph` in axis units, x rising."""
    indices = which if isinstance(which, list) else [which]
    X = axis(graph['x'], graph.get('log_x', False))
    Y = axis(graph['y'], graph.get('log_y', False))
    pts = []
    for i in indices:
        pts += [(X(px), Y(py)) for px, py in drawing_points(page, i)]
    return sorted(pts)


def sampled(pts, xs):
    out = []
    for q in xs:
        v = None
        for (a, ya), (b, yb) in zip(pts, pts[1:]):
            if a <= q <= b:
                v = ya if b == a else ya + (yb - ya) * (q - a) / (b - a)
                break
        out.append(None if v is None else round(v, 4))
    return out


def steps(first, last, step):
    n = int(math.floor((last - first) / step + 1e-9)) + 1
    return [round(first + step * i, 4) for i in range(n)]


def read(folder, spec, checks):
    doc = pymupdf.open(folder / spec['pdf'])
    out = {k: spec[k] for k in ('name', 'source', 'ei', 'kelvin', 'grey_log_h', 'kind') if k in spec}
    out['source'] = spec['source'] + ', vector graphs read by dev/film/read_drawings.py'
    marks = {}
    def take(graph):
        page = doc[graph['page']]
        curves = {name: curve(page, graph, which) for name, which in graph['curves'].items()}
        marks.setdefault(graph['page'], []).append((graph, curves))
        return curves
    def over_log_h(graph):
        """A graph of density over log H, every 0.05 where any curve is read."""
        g = take(graph)
        first = min(min(p[0] for p in pts) for pts in g.values())
        last = max(max(p[0] for p in pts) for pts in g.values())
        grid = steps(math.ceil(first / 0.05) * 0.05, last, 0.05)
        return {'log_h': grid, **{c: sampled(g[c], grid) for c in g}}
    out['characteristic'] = over_log_h(spec['characteristic'])
    # Further density curves (other developers or times, push curves), by name.
    for name, graph in spec.get('extras', {}).items():
        out[name] = over_log_h(graph)
    if 'sensitivity' in spec:
        g = take(spec['sensitivity'])
        out['sensitivity'] = {'nm': NM, **{c: sampled(g[c], NM) for c in g}}
    if 'dyes' in spec:
        g = take(spec['dyes'])
        out['dyes'] = {'nm': NM, **{d: sampled(g[d], NM) for d in g if d in ('cyan', 'magenta', 'yellow')}}
        for extra in ('neutral', 'd_min'):
            if extra in g:
                out[extra] = {'nm': NM, 'density': sampled(g[extra], NM)}
    if 'mtf' in spec:
        g = take(spec['mtf'])
        top = min(max(p[0] for p in g[c]) for c in g)
        freqs = [f for f in (2, 3, 4, 5, 6, 8, 10, 12, 15, 20, 25, 30, 40, 50, 60, 70, 80, 100, 125, 150, 200) if f <= top
                 and all(min(p[0] for p in g[c]) <= f for c in g)]
        out['mtf'] = {'cycles_per_mm': freqs, **{c: sampled(g[c], freqs) for c in g}}
    if 'granularity' in spec:
        g = take(spec['granularity'])
        lows = max(min(p[0] for p in g[c]) for c in g)
        highs = min(max(p[0] for p in g[c]) for c in g)
        grid = steps(math.ceil(lows / 0.1) * 0.1, highs, 0.1)
        shift = spec['granularity'].get('shift', 0.0)
        if 'copy' in spec['granularity']:
            shift = aligned(doc, spec['granularity'], out['characteristic'])
        out['granularity'] = {'log_h': [round(q + shift, 4) for q in grid], **{c: sampled(g[c], grid) for c in g}}
    for k in ('rms_granularity', 'note'):
        if k in spec:
            out[k] = spec[k]
    if checks is not None:
        draw_checks(doc, marks, checks / spec['key'])
    return out


def aligned(doc, graph, main):
    """The log H shift that lays the granularity graph's own copy of the
    characteristic curves ('copy', read on its density axis 'density_y') over the
    main ones, to 0.01."""
    page = doc[graph['page']]
    copy_graph = {**graph, 'y': graph['density_y'], 'log_y': False}
    copies = {c: curve(page, copy_graph, which) for c, which in graph['copy'].items()}
    best, shift = 1e9, 0.0
    for k in range(-600, 601):
        s = k * 0.01
        err, n = 0.0, 0
        for c, pts in copies.items():
            moved = [(x + s, y) for x, y in pts]
            for q, v in zip(main['log_h'], sampled(moved, main['log_h'])):
                if v is not None and main[c][main['log_h'].index(q)] is not None:
                    err += (v - main[c][main['log_h'].index(q)]) ** 2
                    n += 1
        if n > 30 and err / n < best:
            best, shift = err / n, s
    print(f"  granularity shift {shift:+.2f} (rms {best ** 0.5:.3f} density)")
    return shift


def draw_checks(doc, marks, stem):
    """Each page read, at 3×, with what was read drawn back on it in magenta."""
    from PIL import Image, ImageDraw
    stem.parent.mkdir(parents=True, exist_ok=True)
    for number, graphs in marks.items():
        pix = doc[number].get_pixmap(matrix=pymupdf.Matrix(3, 3))
        image = Image.frombytes('RGB', (pix.width, pix.height), pix.samples)
        draw = ImageDraw.Draw(image)
        for graph, curves in graphs:
            def back(ref, log, value):
                (p0, v0), (p1, v1) = ref
                if log:
                    v0, v1, value = math.log10(v0), math.log10(v1), math.log10(max(value, 1e-9))
                return p0 + (value - v0) * (p1 - p0) / (v1 - v0)
            for pts in curves.values():
                for x, y in pts[::2]:
                    px = back(graph['x'], graph.get('log_x', False), x) * 3
                    py = back(graph['y'], graph.get('log_y', False), y) * 3
                    draw.ellipse((px - 2, py - 2, px + 2, py + 2), fill=(255, 0, 200))
        image.save(f'{stem}-p{number}.png')


def survey(pdf, number):
    page = pymupdf.open(pdf)[number]
    for i, d in enumerate(page.get_drawings()):
        r = d['rect']
        if len(d['items']) < 3:
            continue
        color = tuple(round(c, 2) for c in d['color']) if d.get('color') else None
        print(f"D{i} color={color} box=({r.x0:.1f},{r.y0:.1f},{r.x1:.1f},{r.y1:.1f}) items={len(d['items'])}")
        pieces = subpaths(page, i)
        if len(pieces) > 1:
            for k, piece in enumerate(pieces):
                xs = [p[0] for p in piece]; ys = [p[1] for p in piece]
                if len(piece) >= 4:
                    print(f"   {i}:{k} x {min(xs):.1f}..{max(xs):.1f} y {min(ys):.1f}..{max(ys):.1f} n={len(piece)}")
    for block in page.get_text('dict')['blocks']:
        for line in block.get('lines', []):
            for span in line['spans']:
                if span['text'].strip():
                    x0, y0, x1, y1 = span['bbox']
                    print(f"T ({(x0 + x1) / 2:.1f},{(y0 + y1) / 2:.1f}) {span['text'].strip()!r}")


if __name__ == '__main__':
    if sys.argv[1] == '--survey':
        survey(sys.argv[2], int(sys.argv[3]))
        sys.exit()
    import importlib
    sys.path.insert(0, str(here))
    stocks = {}
    for path in sorted(here.glob('sheets_*.py')):
        stocks.update(importlib.import_module(path.stem).STOCKS)
    folder = Path(sys.argv[1])
    wanted = sys.argv[2:] or list(stocks)
    for key in wanted:
        spec = {**stocks[key], 'key': key}
        data = read(folder, spec, folder / 'checks')
        (here / f'{key}.json').write_text(json.dumps(data, indent=1))
        c = data['characteristic']
        print(f"{key}: log H {c['log_h'][0]}..{c['log_h'][-1]}" + (f", MTF to {data['mtf']['cycles_per_mm'][-1]}" if 'mtf' in data else ''))
