"""Kodak and Eastman motion picture stocks (Process ECN-2 negatives, the E-6
Ektachrome E100 and the black-and-white Double-X): their sheets' vector graphs,
for read_drawings.py. Points are the PDF's (72 per inch); axis references are
tick marks (from the page's line drawings) or tick labels' centres from
`read_drawings.py --survey`. Kodak's Vision3 sheets draw the granularity over a
relative log exposure beside their own copy of the characteristic curves
('copy', read on the left density axis 'density_y'), which places it on the
main graph's log H. Curves drawn in several pieces are joined by listing them
("index:piece"); each join was checked on the overlay images.

Two raster sources are traced by trace_raster_curves.py instead: Double-X's
2022 D-96 development series (`doublex`, eastman_double_x_5222_d96.json) and
Eastman Color Negative 5251, 2001: A Space Odyssey's camera stock, from Kodak's
1968 J. SMPTE paper on 5254 (`ecn5251`, eastman_color_negative_5251.json)."""

STOCKS = {
    'kodak_vision3_500t_5219': {
        'pdf': 'vision3_500t_5219/5219-Vision3-500T-tech.pdf', 'name': 'Kodak Vision3 500T 5219',
        'source': 'Kodak H-1-5219t (November 2007)',
        'kind': 'negative', 'ei': 500, 'kelvin': 3200.0,
        # Camera stop 0 on the graph's stop scale (-8..+8 across the frame, so its
        # centre): log H -1.50. The top log H ticks are drawn unevenly; the frame's
        # ends (-4.0, 1.0) are used, which the stop scale agrees with.
        'grey_log_h': -1.50,
        'characteristic': {'page': 2, 'x': ((365.63, -4.0), (550.15, 1.0)), 'y': ((271.79, 0.0), (87.30, 3.0)),
                           'curves': {'blue': '9:1', 'green': '9:0', 'red': '9:2'}},
        # The green (magenta-forming) curve starts in a stray piece of the blue
        # drawing; the red starts in one of the green's (510-520 nm) and runs on in D63.
        'sensitivity': {'page': 3, 'x': ((351.92, 250.0), (552.42, 750.0)), 'y': ((207.85, 0.0), (94.27, 3.0)),
                        'curves': {'blue': '60:0', 'green': ['60:1', '61:0'], 'red': ['61:1', 62, 63]}},
        # The sheet's "Cyan" and "Yellow" labels are swapped: the curve labelled
        # Cyan peaks at 445 nm and "Yellow" at 690 nm; they are named by their
        # peaks here. Each drawing after the first holds one curve's tail and the
        # next one's head.
        'dyes': {'page': 3, 'x': ((354.80, 400.0), (516.10, 750.0)), 'y': ((510.32, 0.0), (418.04, 1.0)),
                 'curves': {'cyan': [71, '72:0'], 'magenta': ['72:1', '73:0'], 'yellow': ['73:1', '74:0'],
                            'neutral': ['74:1', 75, 76, 78], 'd_min': 79}},
        'mtf': {'page': 3, 'x': ((72.76, 1.0), (218.56, 100.0)), 'y': ((209.13, 1.0), (76.15, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'red': '7:0', 'green': ['7:1', '8:0'], 'blue': '8:1'}},
        'granularity': {'page': 3, 'x': ((66.80, 0.0), (250.89, 5.0)), 'y': ((552.03, 0.001), (436.35, 0.1)), 'log_y': True,
                        'curves': {'blue': 22, 'green': '23:0', 'red': '23:1'},
                        'copy': {'blue': 20, 'green': '21:0', 'red': '21:1'}, 'density_y': ((552.06, 0.0), (368.21, 3.0))},
    },
    'kodak_vision3_250d_5207': {
        'pdf': 'vision3_250d_5207/5207-Vision3-250D.pdf', 'name': 'Kodak Vision3 250D 5207',
        'source': 'Kodak H-1-5207t (April 2009)',
        'kind': 'negative', 'ei': 250, 'kelvin': 5500.0,
        # Camera stop 0 on the characteristic graph's stop scale: its log H scale
        # runs -3.7 to 1.1 across the frame (0.3 a stop), so stop 0 is -1.3.
        'grey_log_h': -1.30,
        'characteristic': {'page': 2, 'x': ((369.07, -3.7), (553.59, 1.1)), 'y': ((274.72, 0.0), (90.23, 3.0)),
                           'curves': {'blue': 31, 'green': 30, 'red': 32}},
        'sensitivity': {'page': 3, 'x': ((352.70, 250.0), (553.22, 750.0)), 'y': ((208.68, 0.0), (94.92, 3.0)),
                        'curves': {'blue': 108, 'green': 109, 'red': 110}},
        'dyes': {'page': 3, 'x': ((354.27, 400.0), (538.67, 800.0)), 'y': ((508.12, 0.0), (416.04, 1.0)),
                 'curves': {'yellow': 128, 'magenta': 129, 'cyan': 130, 'neutral': 131, 'd_min': 132}},
        # Blue and green run almost together; blue ends a little higher, as labelled.
        'mtf': {'page': 3, 'x': ((72.71, 1.0), (218.52, 100.0)), 'y': ((209.35, 1.0), (76.37, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'blue': 46, 'green': 47, 'red': 48}},
        'granularity': {'page': 3, 'x': ((67.22, 0.0), (251.81, 5.0)), 'y': ((554.52, 0.001), (438.47, 0.1)), 'log_y': True,
                        'curves': {'blue': '54:0', 'green': '54:1', 'red': '54:2'},
                        'copy': {'blue': 51, 'green': 52, 'red': 53}, 'density_y': ((554.55, 0.0), (370.10, 3.0))},
    },
    'kodak_vision3_50d_5203': {
        'pdf': 'vision3_50d_5203/5203-Vision3-50D-TI5203.pdf', 'name': 'Kodak Vision3 50D 5203',
        'source': 'Kodak H-1-5203t (November 2011)',
        'kind': 'negative', 'ei': 50, 'kelvin': 5500.0,
        # The characteristic graph marks -0.515 at camera stop 0 (its log H scale
        # runs -3.03 to 2.006 across the frame, about 0.315 a stop).
        'grey_log_h': -0.515,
        # The density axis is placed by its 1.0 and 2.0 ticks (the frame's top
        # sits a little above 3.0).
        'characteristic': {'page': 3, 'x': ((356.14, -3.03), (540.60, 2.006)), 'y': ((244.71, 1.0), (182.55, 2.0)),
                           'curves': {'blue': 76, 'green': 75, 'red': 74}},
        'sensitivity': {'page': 3, 'x': ((352.66, 250.0), (553.25, 750.0)), 'y': ((665.67, 0.0), (589.94, 2.0)),
                        'curves': {'blue': 93, 'green': 91, 'red': 92}},
        'dyes': {'page': 4, 'x': ((93.35, 400.0), (277.76, 800.0)), 'y': ((290.82, 0.0), (198.64, 1.0)),
                 'curves': {'cyan': 20, 'magenta': 21, 'yellow': 22, 'neutral': 24, 'd_min': 23}},
        'mtf': {'page': 2, 'x': ((360.68, 1.0), (503.04, 100.0)), 'y': ((489.90, 1.0), (357.01, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'blue': 46, 'green': 45, 'red': 47}},
        'granularity': {'page': 3, 'x': ((66.81, 0.0), (251.47, 5.0)), 'y': ((341.54, 0.001), (225.48, 0.1)), 'log_y': True,
                        'curves': {'blue': 48, 'green': 47, 'red': 46},
                        'copy': {'blue': 51, 'green': 49, 'red': 50}, 'density_y': ((341.55, 0.0), (157.09, 3.0))},
    },
    'kodak_vision3_200t_5213': {
        'pdf': 'vision3_200t_5213/5213-Vision3-200T.pdf', 'name': 'Kodak Vision3 200T 5213',
        'source': 'Kodak H-1-5213t (May 2010)',
        'kind': 'negative', 'ei': 200, 'kelvin': 3200.0,
        # The characteristic graph marks -1.284 at camera stop 0 (its log H scale
        # runs -3.684 to 1.116 across the frame, 0.3 a stop).
        'grey_log_h': -1.284,
        'characteristic': {'page': 3, 'x': ((357.49, -3.684), (542.08, 1.116)), 'y': ((304.92, 0.0), (181.94, 2.0)),
                           'curves': {'blue': 64, 'green': 63, 'red': 62}},
        'sensitivity': {'page': 3, 'x': ((371.19, 300.0), (531.62, 700.0)), 'y': ((626.17, 1.0), (550.43, 3.0)),
                        'curves': {'blue': 101, 'green': 100, 'red': 102}},
        'dyes': {'page': 4, 'x': ((89.90, 400.0), (274.19, 800.0)), 'y': ((289.90, 0.0), (197.68, 1.0)),
                 'curves': {'cyan': 23, 'magenta': 24, 'yellow': 22, 'neutral': 20, 'd_min': 21}},
        'mtf': {'page': 2, 'x': ((360.71, 1.0), (506.50, 100.0)), 'y': ((516.43, 1.0), (383.18, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'blue': 49, 'green': 50, 'red': 51}},
        # Green and red granularity run close together; told apart by their ends
        # at the G and R labels.
        'granularity': {'page': 3, 'x': ((68.45, 0.0), (252.90, 5.0)), 'y': ((337.41, 0.001), (221.63, 0.1)), 'log_y': True,
                        'curves': {'blue': 57, 'green': 56, 'red': 3},
                        'copy': {'blue': 60, 'green': 59, 'red': 58}, 'density_y': ((337.41, 0.0), (153.41, 3.0))},
    },
    'kodak_ektachrome_e100': {
        'pdf': 'ektachrome_e100/e4000_ektachrome_100.pdf', 'name': 'Kodak Ektachrome E100',
        'source': 'Kodak Alaris E-4000 (revised 8-18)',
        'kind': 'reversal', 'ei': 100, 'kelvin': 5500.0,
        # The sheet marks no normal exposure. ISO 2240 puts a reversal film's
        # speed point at H = 10 / ISO lux-seconds, log H = -1.0 for ISO 100 (the
        # rule make_stocks.py uses for Velvia 50); there the curves give density about 1.0,
        # a mid-grey on a slide.
        'grey_log_h': -1.0,
        'characteristic': {'page': 2, 'x': ((368.72, -3.0), (553.91, 1.0)), 'y': ((542.97, 0.0), (404.69, 3.0)),
                           'curves': {'blue': 66, 'green': 65, 'red': 64}},
        # Spectral sensitivity at an equivalent neutral density of 1.0.
        'sensitivity': {'page': 3, 'x': ((74.34, 250.0), (274.89, 750.0)), 'y': ((182.73, 0.0), (106.97, 2.0)),
                        'curves': {'blue': 40, 'green': 39, 'red': 41}},
        # Dyes normalized to a visual neutral of 1.0 for a 5000 K viewing light (so
        # they peak near 0.95, not 1.0), with that neutral; no D-min is drawn.
        'dyes': {'page': 3, 'x': ((70.64, 400.0), (271.10, 700.0)), 'y': ((479.42, 0.2), (392.91, 1.0)),
                 'curves': {'yellow': 73, 'magenta': 76, 'cyan': 77, 'neutral': 78}},
        # The MTF graph has no frame; its frequency axis is placed by the 30 and
        # 60 c/mm ticks.
        'mtf': {'page': 2, 'x': ((465.26, 30.0), (487.20, 60.0)), 'y': ((279.67, 1.0), (213.26, 10.0)), 'log_x': True, 'log_y': True,
                'curves': {'blue': 47, 'green': 48, 'red': 49}},
        # Only a print figure: diffuse rms granularity 8 at a gross diffuse visual
        # density of 1.0 (48 um aperture).
        'rms_granularity': 8.0,
    },
    'eastman_double_x_5222': {
        'pdf': 'double_x_5222/5222-Double-X.pdf', 'name': 'Eastman Double-X 5222',
        'source': 'Kodak H-1-5222 (2003)',
        'kind': 'monochrome', 'ei': 250, 'kelvin': 5500.0,
        # EI 250 daylight (200 tungsten) for development to gamma 0.65. The sheet
        # marks no normal exposure: ISO 6's speed point (0.8 / EI lux-seconds)
        # plus four stops (1.2 log H), the rule make_stocks.py uses for Acros II;
        # there the curve stands at density about 0.97 (0.77 over base).
        'grey_log_h': -1.295,
        # This sheet's labels are drawn as outlines, not text: the axes come from
        # its gridlines and ticks. Its one curve is labelled "5 min" in D-96 at
        # 21 C (its processing table says about 7 min to the control gamma); base
        # density 0.20, Status M (blue). The 2022 sheet's series (4, 5, 6 1/2, 9
        # and 12 min) is traced from its raster by trace_raster_curves.py doublex
        # into eastman_double_x_5222_d96.json.
        'characteristic': {'page': 2, 'x': ((53.04, -4.0), (276.53, 2.0)), 'y': ((305.48, 0.0), (178.05, 3.0)),
                           'curves': {'d96_5': 45}},
        # Spectral sensitivity for net densities 0.3 and 1.0 above gross fog,
        # D-96 to the control gamma, diffuse visual.
        'sensitivity': {'page': 2, 'x': ((481.18, 600.0), (547.80, 750.0)), 'y': ((278.46, 0.0), (206.18, 2.0)),
                        'curves': {'above_fog_0_3': 26, 'above_fog_1_0': 29}},
        # One curve, tungsten, D-96 to the control gamma, diffuse visual.
        'mtf': {'page': 2, 'x': ((53.36, 1.0), (276.14, 1000.0)), 'y': ((563.05, 1.0), (416.42, 1000.0)), 'log_x': True, 'log_y': True,
                'curves': {'visual': 13}},
        # Diffuse rms granularity 14 at a net diffuse visual density of 1.0 (48 um).
        'rms_granularity': 14.0,
    },
}
