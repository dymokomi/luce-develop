"""Black-and-white negatives: their sheets' vector graphs, for read_drawings.py.
Points are the PDF's (72 per inch); axis references are tick marks and gridlines
found beside the tick labels of `read_drawings.py --survey`. Kodak's B&W sheets
write log exposure in bar notation (3̄.0 = -3.0) and print a diffuse rms
granularity number, not a curve.

Each characteristic graph's curves are named by developer and minutes ('d76_8');
each further graph is an 'extra' named by developer and format. The sheets give
no "Log H Ref", so 'grey_log_h' takes the rule make_stocks.py uses for Acros II
(and sheets_kodak_motion.py for Double-X): ISO 6's speed point, 0.8 / EI
lux-seconds (density 0.1 over fog), plus four stops (1.2 log H). On the normal
curves that gives a density about 0.75 over fog.

Ilford HP5 Plus (ilford_hp5_plus.json) is not here: its sheet (Nov 2018) draws
its graphs as raster images, so `trace_raster_curves.py hp5` traced them (after
`pdfimages -png HP5-Plus_201811.pdf h`): its one characteristic curve, ILFOTEC HC
(1+31) for 6 1/2 min at 20 C ('hc_1_31_6.5', Ilford's normal development), and its
wedge spectrogram to 2850 K tungsten ('spectrogram', relative, on the sheet's
linear 0-1.0 scale). Both are single clean curves, followed column by column with
the gridlines stepped over, and the trace sits on them at 3x. The curve's axis is
relative log exposure, so it is placed with density 0.1 over fog at ISO 6's speed
point for EI 400 (log H -2.70), and its grey takes the rule above (-1.50). Ilford
publishes no MTF and no rms granularity, so the JSON has neither."""

STOCKS = {
    'kodak_tri_x_400': {
        'pdf': 'tri_x_400/f4017_trix_320400_0.pdf', 'name': 'Kodak Tri-X 400',
        'source': 'Kodak F-4017 (revised 12-16)', 'kind': 'monochrome', 'ei': 400, 'kelvin': 5500.0,
        # log10(0.8 / 400) + 1.2; see the docstring.
        'grey_log_h': -1.50,
        # D-76, large tank, 20 C, 35 mm. Normal development is 7 3/4 min (the
        # sheet's large-tank table at 20 C), so 'd76_8' is the normal curve.
        'characteristic': {'page': 7, 'x': ((81.40, -4.0), (265.84, 1.0)), 'y': ((250.98, 0.0), (66.48, 4.0)),
                           'curves': {'d76_12': 20, 'd76_10': 23, 'd76_8': 22, 'd76_6': 21}},
        'extras': {
            # The same in 120 roll film.
            'd76_120': {'page': 7, 'x': ((81.40, -4.0), (265.84, 1.0)), 'y': ((518.82, 0.0), (334.33, 4.0)),
                        'curves': {'d76_12': 48, 'd76_10': 49, 'd76_8': 47, 'd76_6': 46}},
            # T-MAX Developer, small tank, 20 C (normal 6 min), 35 mm and 120.
            'tmax_35mm': {'page': 6, 'x': ((366.42, -4.0), (550.85, 1.0)), 'y': ((253.98, 0.0), (69.48, 4.0)),
                          'curves': {'tmax_11': 104, 'tmax_9': 103, 'tmax_7': 101, 'tmax_6': 102}},
            'tmax_120': {'page': 6, 'x': ((367.17, -4.0), (551.60, 1.0)), 'y': ((518.24, 0.0), (333.74, 4.0)),
                         'curves': {'tmax_11': 125, 'tmax_9': 124, 'tmax_7': 123, 'tmax_6': 122}},
            # The sheet's TRI-X 320 (320TXP) graphs are another film and are left out,
            # as are its contrast-index-against-time graphs.
        },
        # Its legend pairs the solid curve with D = 1.0 over fog and the dashed one
        # with 0.3, but the solid one lies about 1.2 higher, and reaching the lower
        # density takes less exposure (more sensitivity): the legend is read swapped.
        'sensitivity': {'page': 6, 'x': ((107.03, 300.0), (267.72, 700.0)), 'y': ((442.97, 0.0), (291.67, 4.0)),
                        'curves': {'d_0_3': 73, 'd_1_0': 74}},
        # D-76, large tank. The decade gridlines sit a little off a true log scale;
        # 2 and 100 c/mm are taken.
        'mtf': {'page': 6, 'x': ((106.49, 2.0), (229.73, 100.0)), 'y': ((166.99, 10.0), (100.2, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'visual': 33}},
        # The sheet's diffuse rms granularity for 400TX (HC-110 B, 20 C): 17.
        'rms_granularity': 17.0,
    },
    'kodak_tmax_100': {
        'pdf': 'tmax_100/f4016_TMax_100.pdf', 'name': 'Kodak T-MAX 100',
        'source': 'Kodak F-4016 (revised 6-18)', 'kind': 'monochrome', 'ei': 100, 'kelvin': 5500.0,
        # log10(0.8 / 100) + 1.2; see the docstring.
        'grey_log_h': -0.90,
        # D-76, small tank, 20 C, the developer of the sheet's image-structure data.
        # Normal development is 6 1/2 min (its small-tank table at 20 C), between
        # 'd76_6' and 'd76_7.5'.
        'characteristic': {'page': 7, 'x': ((355.61, -4.0), (540.04, 1.0)), 'y': ((241.48, 0.0), (57.01, 4.0)),
                           'curves': {'d76_10': 113, 'd76_7.5': 112, 'd76_6': 114}},
        'extras': {
            # T-MAX RS Developer and Replenisher, large tank, 20 C.
            'tmax_rs': {'page': 7, 'x': ((354.21, -4.0), (538.64, 1.0)), 'y': ((474.20, 0.0), (289.71, 4.0)),
                        'curves': {'tmaxrs_15': 148, 'tmaxrs_13': 151, 'tmaxrs_10.5': 150, 'tmaxrs_8': 149}},
            # T-MAX Developer (1:4), small tank, 20 C (normal 7 1/2 min). This graph
            # stops at density 3.0, so the 12 min curve ends at the frame.
            'tmax': {'page': 7, 'x': ((355.81, -4.0), (540.25, 1.0)), 'y': ((704.26, 0.0), (519.83, 3.0)),
                     'curves': {'tmax_12': 175, 'tmax_10': 174, 'tmax_7': 172, 'tmax_6': 173}},
            # Its contrast-index-against-time graphs (page 8) are left out.
        },
        'sensitivity': {'page': 7, 'x': ((74.60, 250.0), (275.13, 750.0)), 'y': ((574.23, 0.0), (498.49, 2.0)),
                        'curves': {'d_0_3': 78, 'd_1_0': 79}},
        # D-76, small tank, tungsten. Decade gridlines as Tri-X's: 2 and 100 c/mm.
        'mtf': {'page': 7, 'x': ((92.85, 2.0), (216.1, 100.0)), 'y': ((346.25, 10.0), (279.37, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'visual': 35}},
        # The sheet's diffuse rms granularity (D-76, 20 C): 8.
        'rms_granularity': 8.0,
    },
}
