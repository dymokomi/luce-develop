#!/usr/bin/env python3
"""Fit each stock's development kinetics (film_develop.lucb) from published
development series, and write dev/film/development.json for make_stocks.py.

    fit_development.py            # needs numpy and scipy

The model (research: reports/Physical film process simulation.md): developed
silver grows toward what the exposure made developable, at a rate that rises
with exposure (a grain with more latent image develops sooner):

    D(x, t) = fog(t) + A(x)·(1 − exp(−k(x)·(t − t_i))),   k(x) = k·10^(β·(x − x_grey))

with fog(t) = f0 + f1·t, A(x) rising with x, t_i an induction time. Black and
white series are fitted in exactly the form film_develop.lucb develops with
(the normal curve grown by S(u·r)/S(u): see fit_series).

Black and white: the stocks' sheets' series. Colour negative: Kodak Z-131's
C-41 control-chart deviations for ±40 s around 3:15 (see fit_c41). Reversal: the
E-6 first developer's negative silver image, its rate fitted to E100's own
push (E-4000: push 1, 8 minutes, rates it EI 200, one stop) on Ektachrome
E100's curves. Kodak publishes no longer push for E100; how the gain grows past
8 minutes is borrowed from Ektachrome E200's series (E-28: 8, 11, 14 min at
EI 320, 640, 1000, so +1 and +1 2/3 stops beyond 8), weighted half, the only
E-6 time series Kodak publishes. Its fog is fitted to Z-119's D-max loss
(+1.5 °C: 0.12/0.12/0.17)."""
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
    """The kinetics as film_develop.lucb uses them: the normal-time curve D_n
    grown to time t by S(u·r)/S(u), u = s·10^(β·(x − grey)) the saturation at
    normal time, r = (t/t_n − i)/(1 − i) with i the induction's share, its fog
    gaining f per normal time: D(x, t) = D_min + f·(t/t_n − 1) + (D_n(x) − D_min)·
    S(u·r)/S(u). Fitted to the series' other curves (the normal one is the
    stock's own), so what is fitted is exactly what develops."""
    source, graph, times = SERIES[name]
    data = json.load(open(here / f'{source}.json'))[graph]
    grey = GREYS.get(name) or json.load(open(here / f'{name}.json'))['grey_log_h']
    normal = NORMAL[name]
    x = np.array(data['log_h'])
    keys = list(times)
    D = np.vstack([np.array([np.nan if v is None else v for v in data[k]]) for k in keys])
    ok = ~np.isnan(D).any(0)
    x, D = x[ok], D[:, ok]
    ts = np.array([times[k] for k in keys], float)
    at_normal = int(np.argmin(np.abs(ts - normal)))
    Dn = D[at_normal]
    base = Dn.min()

    def model(p):
        s, beta, i, f = np.exp(p[0]), p[1], p[2], p[3]
        u = s * 10 ** (beta * (x - grey))
        out = []
        for t in ts:
            r = max(t / normal - i, 0.0) / max(1.0 - i, 1e-9)
            out.append(base + f * (t / normal - 1.0) + (Dn - base) * S(u * r) / S(u))
        return np.array(out)

    best = min((least_squares(lambda p: (model(p) - D).ravel(), [a, b, 0.0, 0.0], bounds=([-6, -0.5, 0.0, -0.2], [4, 1.5, 0.6, 0.5]))
                for a in np.linspace(-3, 2, 6) for b in (0.0, 0.2, 0.5)), key=lambda r: r.cost)
    s, beta, i, f = float(np.exp(best.x[0])), float(best.x[1]), float(best.x[2]), float(best.x[3])
    residual = model(best.x) - D
    print(f'{name}: saturation {s:.3f}, beta {beta:.3f}, induction {i:.2f} of normal, fog {f:+.4f} per normal time; '
          f'rms {np.sqrt((residual ** 2).mean()):.4f}, worst {np.abs(residual).max():.3f}')
    return {'saturation': [s] * 3, 'slope': [beta] * 3, 'induction': i, 'fog_rate': [f] * 3,
            'source': f'fitted to the {source} series ({", ".join(times)}) in the form film_develop.lucb develops'}


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

    # E100's own (E-4000), then E200's gains beyond 8 minutes (E-28), half weight.
    own, beyond = 1.0, {11.0: 1.0, 14.0: 5 / 3}

    def residual(p):
        out = []
        for ch, x, P in layers:
            level = P.min() + 1.0
            gain = lambda t: (s0 - speed(x, positive(P, x, t, np.exp(p[0]), p[1], fog[ch]), level)) / 0.30103
            s0 = speed(x, positive(P, x, tn, np.exp(p[0]), p[1], fog[ch]), level)
            at8 = gain(8.0)
            out.append(at8 - own)
            for t, stops in beyond.items():
                out.append(0.5 * (gain(t) - at8 - stops))
        return np.array(out)

    best = min((least_squares(residual, [a, b]) for a in np.linspace(-4, 1, 11) for b in (0.0, 0.3, 0.6, 1.0)),
               key=lambda r: r.cost)
    k, beta = float(np.exp(best.x[0])), float(best.x[1])
    print(f'E-6 first developer: k {k:.3f}/min, beta {beta:.3f}; fog {[round(fog[c], 4) for c in drops]}; '
          f'push residuals {np.round(residual(best.x), 3)} stops')
    return dimensionless([k] * 3, [beta] * 3, 0.0, [float(fog[c]) for c in drops], tn,
                         'fitted to E100 E-4000 push 1 (8 min, +1 stop), E200 E-28 gains past 8 min, Z-119 D-max loss')


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
