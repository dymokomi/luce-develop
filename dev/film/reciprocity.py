#!/usr/bin/env python3
"""Reciprocity failure per stock and layer, for make_stocks.py (film_exposure.lucb
applies it). At long exposures film needs more light than exposure alone says:
the first silver atoms of a latent image fall apart before the next photon
comes (Gurney–Mott, Mitchell–Mott). The stops lost at a metered exposure time t
are fitted as

    L(t) = q · log2(1 + (t / t0)^p),   p = 2

(nothing for t ≪ t0, then q·p stops per doubling of time), per layer, to the
makers' published corrections. Applied per pixel at its own irradiance (a pixel
half as bright behaves as a twice-as-long exposure), it takes more from the
shadows and raises contrast, as the makers' development cuts compensate.

Where a filter is given (CC values), the layer it holds back fails least: the
correction's stops are its layers' mean, and a CC filter of density d moves its
layer d / 0.301 stops against the other two.

Sources (research_notes/Physical film process simulation/exposure_latent_image.md):
Kodak E-31 / F-4017 (Tri-X and most Kodak black-and-white: 1 s → 2 s, 10 s →
50 s, 100 s → 1200 s), Kodak E-31 (T-MAX 100: 10 s → 15 s, 100 s → 200 s),
Ilford's published adjustment for HP5 Plus (t_c = t_m^1.31, from 1/2 s),
Fujifilm's Acros II sheet (none below 120 s; +½ stop 120–1000 s), Fujifilm's
Velvia 50 sheet (4 s +⅓ CC5M, 8 s +½ CC7.5M, 16 s +⅔ CC10M, 32 s +1 CC12.5M),
Kodak's Vision3 500T brochure (none to 1 s; 10 s +1 stop CC10R). Other stocks
(estimates): Kodak's still and motion color negatives take Vision3 500T's
(Kodak: no correction to 1 s, "make tests" beyond); Ektachrome and Velvia 100
take Velvia 50's mean, unfiltered; Double-X takes Tri-X's."""
import math
import numpy as np
from scipy.optimize import least_squares

STOP_PER_CC = 1.0 / 0.30103 / 100.0   # stops per CC unit (CC10 = 0.10 density)


KNEE = 2.0          # the knee's sharpness (p)
DEFAULT_SLOPE = 0.36  # stops lost per doubling of time beyond the knee where a
                      # sheet gives one point (an estimate: a community fit to
                      # Portra 400, 0.5167·ln t − 0.2 stops, not Kodak's)


def fit(points):
    """q, p, t0 fitted to (seconds, stops lost) points: the slope s = q·p per
    doubling and the knee t0, with p fixed; one failing point fits t0 alone."""
    t = np.array([p[0] for p in points], float)
    L = np.array([p[1] for p in points], float)
    failing = int((L > 0).sum())
    model = lambda slope, t0: slope / KNEE * np.log2(1.0 + (t / t0) ** KNEE)
    if failing >= 2:
        r = least_squares(lambda x: model(x[0], math.exp(x[1])) - L, [0.4, 0.0], bounds=([0.02, -7.0], [3.0, 9.0]))
        slope, t0 = r.x[0], math.exp(r.x[1])
    else:
        r = least_squares(lambda x: model(DEFAULT_SLOPE, math.exp(x[0])) - L, [0.0], bounds=([-7.0], [9.0]))
        slope, t0 = DEFAULT_SLOPE, math.exp(r.x[0])
    return [float(slope / KNEE), KNEE, float(t0)]


def layered(mean_points, cc=None):
    """Per layer (red, green, blue) points from the mean correction and the CC
    filter at each time: `cc` maps seconds to (layer index the filter holds
    back, CC value)."""
    layers = [[], [], []]
    for t, stops in mean_points:
        shift = [0.0, 0.0, 0.0]
        if cc and t in cc:
            held, value = cc[t]
            s = value * STOP_PER_CC
            shift = [s / 3.0] * 3
            shift[held] = -2.0 * s / 3.0
        for k in range(3):
            layers[k].append((t, max(stops + shift[k], 0.0)))
    return layers


def flat(points):
    """The same points for all three layers (black and white)."""
    return [list(points)] * 3


# Short times where a sheet says no correction is needed anchor the toe.
TABLES = {
    'kodak_tri_x_400': flat([(0.1, 0.0), (1.0, 1.0), (10.0, math.log2(5.0)), (100.0, math.log2(12.0))]),
    'kodak_tmax_100': flat([(0.1, 0.0), (1.0, 0.0), (10.0, math.log2(1.5)), (100.0, 1.0)]),
    'ilford_hp5_plus': flat([(0.25, 0.0)] + [(t, (1.31 - 1.0) * math.log2(t)) for t in (1.0, 4.0, 16.0, 64.0, 256.0)]),
    'fuji_acros_ii': flat([(1.0, 0.0), (100.0, 0.0), (120.0, 0.5), (1000.0, 0.5)]),
    'fuji_velvia_50': layered([(1.0, 0.0), (4.0, 1 / 3), (8.0, 0.5), (16.0, 2 / 3), (32.0, 1.0)],
                              {4.0: (1, 5.0), 8.0: (1, 7.5), 16.0: (1, 10.0), 32.0: (1, 12.5)}),
    'kodak_vision3_500t_5219': layered([(0.1, 0.0), (1.0, 0.0), (10.0, 1.0)], {10.0: (0, -10.0)}),
}
# CC10R adds red light: the red layer fails most (a negative CC value here
# moves its layer the other way).
BORROWED = {
    'eastman_double_x_5222': 'kodak_tri_x_400',
    'fuji_velvia_100': 'fuji_velvia_50', 'kodak_ektachrome_e100': 'fuji_velvia_50',
}


def table(key, kind):
    if key in TABLES:
        return TABLES[key]
    if key in BORROWED:
        return TABLES[BORROWED[key]]
    if kind == 'reversal':
        return TABLES['fuji_velvia_50']
    if kind == 'monochrome':
        return TABLES['kodak_tri_x_400']
    return TABLES['kodak_vision3_500t_5219']


def reciprocity(key, kind):
    """Per layer q, p, t0 (nine values, red first) for stock `key`."""
    out = []
    for points in table(key, kind):
        out += fit(points) if any(s > 0 for _, s in points) else [0.0, 1.0, 1.0]
    return out


if __name__ == '__main__':
    for key in TABLES:
        values = reciprocity(key, '')
        print(key, [round(v, 3) for v in values])
        for layer, points in enumerate(TABLES[key]):
            q, p, t0 = values[layer * 3:layer * 3 + 3]
            worst = max(abs(q * math.log2(1 + (t / t0) ** p) - s) for t, s in points)
            print(f'   layer {layer}: within {worst:.2f} stops')
