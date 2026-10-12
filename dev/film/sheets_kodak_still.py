"""Kodak still color negatives (Process C-41): their sheets' vector graphs, for
read_drawings.py. Points are the PDF's (72 per inch); axis references are tick
labels' centres from `read_drawings.py --survey`. Kodak's still sheets draw only
the midscale neutral and D-min, not each dye; make_stocks.py gives them shapes.

They give a Print Grain Index (PGI), not rms granularity, so each stock's
'rms_granularity' is an estimate. Portra 400's (9.0) sits between Vision3 250D's
and 500T's; the others scale from it by their PGI at the same enlargement (35 mm
to 8x10, 8.8x): Kodak's PGI moves 4 units per just-noticeable difference, and we
take a just-noticeable difference as about 6 % in rms, so rms ~ 9.0 * 1.06 **
((PGI - 59) / 4). Estimates, not Kodak's figures."""

STOCKS = {
    'kodak_portra_400': {
        'pdf': 'portra_400/e4050.pdf', 'name': 'Kodak Portra 400', 'source': 'Kodak E-4050 (revised 1-25)',
        'kind': 'negative', 'ei': 400, 'kelvin': 5500.0,
        # The characteristic graph's "Log H Ref": normal exposure.
        'grey_log_h': -1.44,
        'characteristic': {'page': 3, 'x': ((79.6, -4.0), (266.0, 1.0)), 'y': ((287.8, 0.0), (102.9, 4.0)),
                           'curves': {'blue': 34, 'green': 35, 'red': 36}},
        'sensitivity': {'page': 3, 'x': ((76.8, 250.0), (277.3, 750.0)), 'y': ((494.0, 0.0), (344.6, 4.0)),
                        'curves': {'blue': 52, 'green': 54, 'red': 53}},
        'dyes': {'page': 3, 'x': ((357.5, 400.0), (541.8, 700.0)), 'y': ((289.2, 0.0), (104.9, 2.5)),
                 'curves': {'neutral': 68, 'd_min': 69}},
        'mtf': {'page': 3, 'x': ((348.8, 1.0), (495.0, 100.0)), 'y': ((510.2, 1.0), (365.4, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'blue': 115, 'green': 116, 'red': 117}},
        # Kodak publishes a print grain index for it, no rms: an estimate, between
        # Vision3 250D's and 500T's.
        'rms_granularity': 9.0,
    },
    'kodak_ektar_100': {
        'pdf': 'ektar_100/e4046.pdf', 'name': 'Kodak Ektar 100', 'source': 'Kodak E-4046 (revised 1-25)',
        'kind': 'negative', 'ei': 100, 'kelvin': 5500.0,
        # The characteristic graph's "Log H Ref": normal exposure.
        'grey_log_h': -0.84,
        'characteristic': {'page': 3, 'x': ((81.19, -3.0), (265.70, 2.0)), 'y': ((292.41, 0.0), (107.92, 4.0)),
                           'curves': {'blue': 31, 'green': 32, 'red': 33}},
        'sensitivity': {'page': 3, 'x': ((74.19, 250.0), (274.65, 750.0)), 'y': ((508.04, 0.0), (356.56, 3.0)),
                        'curves': {'blue': 48, 'green': 49, 'red': 50}},
        'dyes': {'page': 3, 'x': ((357.45, 400.0), (541.78, 700.0)), 'y': ((290.39, 0.0), (106.02, 2.5)),
                 'curves': {'neutral': 67, 'd_min': 68}},
        'mtf': {'page': 3, 'x': ((347.58, 1.0), (493.33, 100.0)), 'y': ((511.23, 1.0), (378.19, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'blue': 112, 'green': 113, 'red': 114}},
        # Estimate: PGI 38 at 8x10 (Portra 400: 59), so 9.0 * 1.06 ** (-21 / 4).
        'rms_granularity': 6.5,
    },
    'kodak_portra_160': {
        'pdf': 'portra_160/e4051.pdf', 'name': 'Kodak Portra 160', 'source': 'Kodak E-4051 (revised 1-25)',
        'kind': 'negative', 'ei': 160, 'kelvin': 5500.0,
        # The characteristic graph's "Log H Ref": normal exposure.
        'grey_log_h': -1.051,
        # Density ticks (1.0 to 4.0) run 1.1 pt below the frame's foot, so they set y.
        'characteristic': {'page': 3, 'x': ((81.45, -4.0), (266.01, 1.0)), 'y': ((241.32, 1.0), (102.12, 4.0)),
                           'curves': {'blue': 31, 'green': 32, 'red': 33}},
        # Its axis prints "20" for 2.0.
        'sensitivity': {'page': 3, 'x': ((73.75, 250.0), (274.23, 750.0)), 'y': ((461.68, 0.0), (385.86, 2.0)),
                        'curves': {'blue': 49, 'green': 50, 'red': 51}},
        'dyes': {'page': 3, 'x': ((355.13, 400.0), (539.49, 700.0)), 'y': ((285.51, 0.0), (101.16, 2.5)),
                 'curves': {'neutral': 65, 'd_min': 66}},
        'mtf': {'page': 3, 'x': ((349.0, 1.0), (421.81, 10.0)), 'y': ((503.51, 1.0), (370.41, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'blue': 110, 'green': 111, 'red': 112}},
        # Estimate: PGI 50 at 8x10 (Portra 400: 59), so 9.0 * 1.06 ** (-9 / 4).
        'rms_granularity': 8.0,
    },
    'kodak_portra_800': {
        'pdf': 'portra_800/e4040.pdf', 'name': 'Kodak Portra 800', 'source': 'Kodak E-4040 (revised 1-25)',
        'kind': 'negative', 'ei': 800, 'kelvin': 5500.0,
        # The characteristic graph's "Log H Ref": normal exposure (the push graphs
        # print the same -1.74 on the same exposure axis).
        'grey_log_h': -1.74,
        # The EI 800 graph's axis prints -2.0 and -3.0 swapped; its ticks are even.
        'characteristic': {'page': 3, 'x': ((81.64, -4.0), (266.17, 1.0)), 'y': ((258.89, 0.0), (74.47, 4.0)),
                           'curves': {'blue': 10, 'green': 11, 'red': 12}},
        'extras': {
            # Exposed at EI 1600 and given Kodak's 1-stop push in C-41.
            'push_1600': {'page': 3, 'x': ((81.13, -4.0), (265.63, 1.0)), 'y': ((498.52, 0.0), (314.06, 4.0)),
                          'curves': {'blue': 25, 'green': 26, 'red': 27}},
            # Exposed at EI 3200 and given the 2-stop push.
            'push_3200': {'page': 3, 'x': ((357.64, -4.0), (542.19, 1.0)), 'y': ((255.52, 0.0), (70.98, 4.0)),
                          'curves': {'blue': 43, 'green': 44, 'red': 45}},
        },
        'sensitivity': {'page': 3, 'x': ((350.17, 250.0), (550.94, 750.0)), 'y': ((465.37, 0.0), (313.67, 4.0)),
                        'curves': {'blue': 63, 'green': 64, 'red': 65}},
        # The midscale neutral is drawn dashed: all its pieces are read.
        'dyes': {'page': 4, 'x': ((81.09, 400.0), (265.44, 700.0)), 'y': ((286.12, 0.0), (101.77, 2.5)),
                 'curves': {'neutral': 34, 'd_min': 33}},
        'mtf': {'page': 4, 'x': ((71.57, 1.0), (217.34, 100.0)), 'y': ((498.66, 1.0), (365.76, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'blue': 80, 'green': 81, 'red': 82}},
        # Estimate: PGI 70 at 8x10 (Portra 400: 59), so 9.0 * 1.06 ** (11 / 4).
        'rms_granularity': 10.5,
    },
}
