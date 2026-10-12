"""Read curves drawn as vector paths out of a PDF page (Kodak's later datasheets).

    extract_vector_curves.py PDF PAGE IDS X0PT,X0,X1PT,X1 Y0PT,Y0,Y1PT,Y1 OUT.json

IDS are the drawing indices (pymupdf's page.get_drawings()); the two calibrations map
page points to axis values. 5293's dye curves: page 3 (0-based), paths 31,32,33,34,
357.6,300,541.9,800 and 246.5,0,62.0,1.8."""
import pymupdf, sys, json
def points(pdf, pageno, ids):
    page = pymupdf.open(pdf)[pageno]
    ds = page.get_drawings()
    out = {}
    for i in ids:
        pts = []
        for it in ds[i]['items']:
            for p in it[1:]:
                if hasattr(p, 'x'): pts.append((p.x, p.y))
        out[i] = pts
    return out
if __name__ == '__main__':
    pdf, pageno = sys.argv[1], int(sys.argv[2]); ids = [int(v) for v in sys.argv[3].split(',')]
    fx = [float(v) for v in sys.argv[4].split(',')]  # x0pt, x0val, x1pt, x1val
    fy = [float(v) for v in sys.argv[5].split(',')]
    res = {}
    for i, pts in points(pdf, pageno, ids).items():
        conv = [(fx[1] + (x - fx[0]) * (fx[3] - fx[1]) / (fx[2] - fx[0]), fy[1] + (y - fy[0]) * (fy[3] - fy[1]) / (fy[2] - fy[0])) for x, y in pts]
        res[i] = conv
        peak = max(conv, key=lambda p: p[1])
        print(i, len(conv), 'x', round(min(p[0] for p in conv),1), round(max(p[0] for p in conv),1), 'peak', [round(v,3) for v in peak])
    json.dump(res, open(sys.argv[6], 'w'))
