#!/usr/bin/env python3
"""Fit each stock's development kinetics (film_develop.lucb) from published
development series, and write dev/film/development.json for make_stocks.py.

    fit_development.py            # needs numpy and scipy

The model (research: reports/Physical film process simulation.md): developed
silver grows toward what the exposure made developable, at a rate that rises
with exposure (a grain with more latent image develops sooner):

    D(x, t) = fog(t) + A(x)·(1 − exp(−k(x)·(t − t_i))),   k(x) = k·10^(β·(x − x_grey))

with fog(t) = f0 + f1·t, A(x) rising with x, t_i an induction time. Fitted to
every curve of a series at once (A free and monotone per exposure; k, β, t_i,
f0, f1 shared). The rate is per minute at the series' temperature (20 °C).

Black and white: the stocks' sheets' series. Colour negative: Kodak Z-131's
C-41 control-chart deviations for ±40 s around 3:15 (see fit_c41). Reversal: the
E-6 first developer's negative silver image, its rate fitted to Kodak's push
speeds (E-28: 8, 11, 14 min rate Ektachrome E200 at +2/3, +1 2/3, +2 1/3
stops) on Ektachrome E100's curves, its fog to Z-119's D-max loss (+1.5 °C:
0.12/0.12/0.17)."""
import json
from pathlib import Path
import numpy as np
from scipy.optimize import brentq, least_squares

here = Path(__file__).resolve().parent
S = lambda u: 1.0 - np.exp(-u)

# Black-and-white series: (stock JSON, graph, curves by minutes, grey log H).
SERIES = {
    'fuji_acros_ii': ('fuji_acros_ii', 'characteristic', {'d76_4': 4, 'd76_7': 7, 'd76_10': 10}),
    'kodak_tri_x_400': ('kodak_tri_x_400', 'characteristic', {'d76_6': 6, 'd76_8': 8, 'd76_10': 10, 'd76_12': 12}),
    'kodak_tmax_100': ('kodak_tmax_100', 'characteristic', {'d76_6': 6, 'd76_7.5': 7.5, 'd76_10': 10}),
    'eastman_double_x_5222': ('eastman_double_x_5222_d96', 'characteristic', {'d96_4': 4, 'd96_5': 5, 'd96_6_5': 6.5, 'd96_9': 9, 'd96_12': 12}),
}
# Acros II's sheet marks no grey: make_stocks.py's, ISO 6's speed point (0.8 /
# EI lux s) plus four stops.
GREYS = {'fuji_acros_ii': round(np.log10(0.8 / 100.0) + 1.2, 4)}


# Each series' stock's normal time (its stock's in make_stocks.py), minutes.
NORMAL = {'fuji_acros_ii': 7.0, 'kodak_tri_x_400': 8.0, 'kodak_tmax_100': 7.5, 'eastman_double_x_5222': 5.0}


def dimensionless(rate, slope, induction, fog, normal, source):
    """Kinetics relative to normal development, so other processes and times
    scale by their ratio: each layer's saturation at grey (k·(t_n − t_i)), the
    rate's slope per log H, the induction as a share of normal time, and fog
    gained per normal time."""
    return {'saturation': [r * (normal - induction) for r in rate], 'slope': slope, 'induction': induction / normal,
            'fog_rate': [f * normal for f in fog], 'source': source}


def fit_series(name):
    source, graph, times = SERIES[name]
    data = json.load(open(here / f'{source}.json'))[graph]
    grey = GREYS.get(name) or json.load(open(here / f'{name}.json'))['grey_log_h']
    x = np.array(data['log_h'])
    ts = np.array(list(times.values()), float)
    D = np.vstack([np.array([np.nan if v is None else v for v in data[k]]) for k in times])
    ok = ~np.isnan(D).any(0)
    x, D = x[ok], D[:, ok]
    n = len(x)

    def model(p):
        ti, f0, f1, log_k, beta = p[:5]
        A = np.cumsum(np.exp(p[5:]))
        k = np.exp(log_k) * 10 ** (beta * (x - grey))
        return f0 + f1 * ts[:, None] + A[None] * S(k[None] * np.maximum(ts[:, None] - ti, 0.0))

    p0 = np.concatenate([[0.3, D[:, :3].min(), 0.0, np.log(0.1), 0.3], np.full(n, np.log(0.05))])
    lo = np.concatenate([[0, 0, 0, -6, -0.5], np.full(n, -12)])
    hi = np.concatenate([[3, 1, 0.05, 1, 1.5], np.full(n, 1)])
    fit = least_squares(lambda p: (model(p) - D).ravel(), p0, bounds=(lo, hi))
    ti, f0, f1, log_k, beta = fit.x[:5]
    residual = model(fit.x) - D
    k = float(np.exp(log_k))
    normal = NORMAL[name]
    print(f'{name}: k {k:.3f}/min, beta {beta:.3f}, induction {ti:.2f} min, fog +{f1:.4f}/min; '
          f'rms {np.sqrt((residual ** 2).mean()):.4f}')
    return dimensionless([k] * 3, [float(beta)] * 3, float(ti), [float(f1)] * 3, normal,
                         f'fitted to the {source} series ({", ".join(times)})')


def fit_c41():
    """Per layer k, and one effective delay, from Z-131's HD−LD deviations for
    ±40 s around 3:15 with the strips' HD−LD taken as 0.9 (Kodak publishes no
    absolute C-41 aim; ECN-2's, H-24 Module 1, are 0.86/0.97/0.93). Shortening
    costs 1.6 times what lengthening gives, more than saturation alone explains
    at that contrast: the rest is a delay before development runs, about 1.4
    min, the developer swelling the gelatin and diffusing down through 15–25 µm
    of layers (the agents themselves start within seconds: Kodak's US 3,964,912).
    ECN-2's own slope near 3:00 (0.26 HD−LD per minute) under the same delay
    gives 68–77 % saturation, in line with these 72–79 %."""
    t0, dt, contrast = 3.25, 40.0 / 60.0, 0.9
    deviations = ((0.12, 0.19), (0.10, 0.17), (0.14, 0.23))

    def residual(p):
        ti = p[3]
        out = []
        for layer, (gain, loss) in enumerate(deviations):
            k = np.exp(p[layer])
            F = lambda t: S(k * max(t - ti, 0.0))
            out += [F(t0 + dt) / F(t0) - 1 - gain / contrast, 1 - F(t0 - dt) / F(t0) - loss / contrast]
        return out
    fit = least_squares(residual, [np.log(0.7)] * 3 + [1.0], bounds=([-6] * 3 + [0.0], [3] * 3 + [2.5]))
    rates, delay = [float(np.exp(v)) for v in fit.x[:3]], float(fit.x[3])
    print(f'C-41: k per layer {[round(r, 3) for r in rates]} /min, delay {delay:.2f} min, '
          f'saturation {[round(S(r * (t0 - delay)), 2) for r in rates]}, residual {np.abs(fit.fun).max():.3f}')
    return rates, delay


def fit_e6():
    data = json.load(open(here / 'kodak_ektachrome_e100.json'))
    c, grey = data['characteristic'], data['grey_log_h']
    tn, per_degree = 6.0, 0.08
    drops = {'red': 0.12, 'green': 0.12, 'blue': 0.17}
    layers = []
    for ch in ('red', 'green', 'blue'):
        P = np.array([np.nan if v is None else v for v in c[ch]])
        ok = ~np.isnan(P)
        layers.append((ch, np.array(c['log_h'])[ok], P[ok]))
    longer = tn * (np.exp(per_degree * 1.5) - 1.0)
    fog = {ch: drops[ch] / ((P.max() - P.min()) * longer) for ch, _, P in layers}

    def positive(P, x, t, k, beta, phi):
        top, bottom = P.max(), P.min()
        rate = k * 10 ** (beta * (x - grey))
        n = np.minimum(1.0, (top - P) / (top - bottom) * S(rate * t) / S(rate * tn))
        n = n + phi * max(t - tn, 0.0) * (1 - n)
        return bottom + (top - bottom) * (1 - n)

    def speed(x, P, level):
        i = np.where((P[:-1] >= level) & (P[1:] < level))[0][0]
        return x[i] + (P[i] - level) * (x[i + 1] - x[i]) / (P[i] - P[i + 1])

    targets = {8.0: 2 / 3, 11.0: 5 / 3, 14.0: 7 / 3}

    def residual(p):
        out = []
        for ch, x, P in layers:
            level = P.min() + 1.0
            s0 = speed(x, positive(P, x, tn, np.exp(p[0]), p[1], fog[ch]), level)
            for t, stops in targets.items():
                out.append((s0 - speed(x, positive(P, x, t, np.exp(p[0]), p[1], fog[ch]), level)) / 0.30103 - stops)
        return np.array(out)

    best = min((least_squares(residual, [a, b]) for a in np.linspace(-4, 1, 11) for b in (0.0, 0.3, 0.6, 1.0)),
               key=lambda r: r.cost)
    k, beta = float(np.exp(best.x[0])), float(best.x[1])
    print(f'E-6 first developer: k {k:.3f}/min, beta {beta:.3f}; fog {[round(fog[c], 4) for c in drops]}; '
          f'push speeds within {np.abs(residual(best.x)).max():.2f} stops')
    return dimensionless([k] * 3, [beta] * 3, 0.0, [float(fog[c]) for c in drops], tn,
                         'fitted to Kodak E-28 push speeds and Z-119 D-max loss on Ektachrome E100')


if __name__ == '__main__':
    out = {name: fit_series(name) for name in SERIES}
    c41, delay = fit_c41()
    # D-min's deviation for ±40 s (+0.02/+0.035/0 and −0.055/−0.055/−0.02), its
    # mean slope per minute.
    fog = [(0.02 + 0.055) / (80.0 / 60.0), (0.035 + 0.055) / (80.0 / 60.0), (0.0 + 0.02) / (80.0 / 60.0)]
    out['color_negative'] = dimensionless(c41, [0.0] * 3, delay, fog, 3.25,
                                          'Kodak Z-131 C-41 control deviations, ±40 s around 3:15')
    out['reversal'] = fit_e6()
    (here / 'development.json').write_text(json.dumps(out, indent=1))
    print('wrote dev/film/development.json')
