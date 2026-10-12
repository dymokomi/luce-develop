"""Photographic printing papers: their sheets' vector graphs, for read_drawings.py,
for the Darkroom chain (a negative enlarged or contact-printed onto paper, viewed
as a reflection print). Points are the PDF's (72 per inch); axis references are
tick marks, gridlines or frame edges beside the tick labels of
`read_drawings.py --survey`. Every spec is 'kind': 'paper'; its density is
reflection density (Status A for the color papers).

Black-and-white variable-contrast papers name their characteristic curves by
the filter they were exposed through: Ilford's Multigrade filters as 'grade_00'
.. 'grade_5', Kodak's POLYMAX filters as 'filter_minus1' .. 'filter_5plus' (with
'filter_0.5' for 1/2), and the unfiltered exposure as 'white_light'. Their
spectral sensitivities are drawn at a few densities, named like sheets_bw.py's
('d_0_3' = density 0.3 above D-min).

Kodak's sheets give absolute log exposure in lux-seconds (bar notation, 2̄.0 =
-2.0). Ilford's gives only "relative log exposure": its printed numbers are kept,
so place it by its ISO speed (or by matching a Kodak curve) before use.

ISO paper speed (P) and ISO range (R, 100 x the log exposure range) come from
each sheet's tables and are repeated in 'note'."""

STOCKS = {
    'ilford_multigrade_iv_rc': {
        'pdf': 'paper_ilford_mgiv/Multigrade IV RC.pdf', 'name': 'Ilford Multigrade IV RC',
        'source': 'Ilford Multigrade IV RC fact sheet (December 2001)', 'kind': 'paper',
        # Multigrade developer 1+9, 1 min at 20 C, glossy or pearl. The axis is
        # "relative log exposure": its own numbers (1 .. 4) are kept. The density
        # axis starts at 0.0 and the curves sit on it, so it reads as density
        # above the paper base; D-max is about 2.05 above base on every grade.
        # Gridlines every 0.5 log H and 0.5 density; the long ticks at 1 and 4
        # (x) and 0.0 (frame foot) and 2.0 (y) are the references.
        'characteristic': {'page': 1, 'x': ((352.79, 1.0), (475.55, 4.0)), 'y': ((427.54, 0.0), (345.97, 2.0)),
                           # Drawing 18's five pieces, told apart where they
                           # reach the shoulder (softest furthest right) and
                           # matched to the labels 3, 2, 1, 0, 00 there.
                           'curves': {'grade_00': '18:4', 'grade_0': '18:3', 'grade_1': '18:0',
                                      'grade_2': '18:2', 'grade_3': '18:1'}},
        'extras': {
            # Filters 4 and 5 on the second graph (same axes). Both are one
            # unbroken path (drawing 37) that runs down grade 5 and back up
            # grade 4, so each is a range of its items ("index@first-last",
            # which read_drawings.py needs to support): grade 5 reaches the
            # shoulder first (label "5" left of "4").
            'grades_4_5': {'page': 1, 'x': ((352.94, 1.0), (475.77, 4.0)), 'y': ((572.14, 0.0), (490.49, 2.0)),
                           'curves': {'grade_4': '37@6-11', 'grade_5': '37@0-5'}},
        },
        # Unfiltered, equal-energy spectrum, at density 0.5, 1.0 and 1.5 (each
        # curve is labelled at its green peak). Relative log sensitivity; ticks
        # at 1.0 and 3.0 on the right-hand axis. The graph spans 390-560 nm:
        # the blue-sensitive high-contrast emulsion and the green-sensitized
        # low-contrast one (the bump at 515 nm) are not drawn apart.
        'sensitivity': {'page': 0, 'x': ((323.87, 400.0), (486.68, 550.0)), 'y': ((705.21, 1.0), (639.88, 3.0)),
                        'curves': {'d_0_5': '5:0', 'd_1_0': '5:1', 'd_1_5': '5:2'}},
        # ISO range (ISO 6846) with Multigrade filters: 00 R180, 0 R160, 1 R130,
        # 2 R110, 3 R90, 4 R60, 5 R40; unfiltered R110. ISO speed: filters 00 to
        # 3 1/2 P200, 4 to 5 P100 (twice the exposure); unfiltered P500.
        'note': ('Relative log exposure (sheet numbers kept). Density above base. '
                 'ISO range R: 00 180, 0 160, 1 130, 2 110, 3 90, 4 60, 5 40, unfiltered 110. '
                 'ISO speed P: 00-3.5 200, 4-5 100, unfiltered 500. D-max about 2.05.'),
    },
    'kodak_polymax_ii_rc': {
        'pdf': 'paper_kodak_polymax/g26.pdf', 'name': 'Kodak Polymax II RC',
        'source': 'Kodak G-26 (June 2005)', 'kind': 'paper',
        # F surface, POLYMAX filters, DEKTOL 1:2, 60 s at 20 C. Four graphs, each
        # with the white-light curve and three filters; all on the same absolute
        # axes (log lux-seconds, 3̄.0 .. 1.0; density 0 .. 4.0). Frame corners
        # are -3.0 / 1.0 and 0.0 / 4.0, which the ticks between confirm.
        # Curves matched to labels through the leader lines' ends.
        'characteristic': {'page': 6, 'x': ((95.01, -3.0), (279.52, 1.0)), 'y': ((301.26, 0.0), (116.75, 4.0)),
                           'curves': {'white_light': 12, 'filter_1': 11, 'filter_3': 10, 'filter_5plus': 13}},
        'extras': {
            # The white-light curve and filter 4 are one drawing (21), in two pieces.
            'filters_0_2_4': {'page': 6, 'x': ((88.51, -3.0), (273.02, 1.0)), 'y': ((538.87, 0.0), (354.36, 4.0)),
                              'curves': {'white_light': '21:1', 'filter_0': 22, 'filter_2': 23, 'filter_4': '21:0'}},
            'filters_m1_1.5_3.5': {'page': 6, 'x': ((368.21, -3.0), (552.72, 1.0)), 'y': ((533.42, 0.0), (348.91, 4.0)),
                                   'curves': {'white_light': 54, 'filter_minus1': 53, 'filter_1.5': 52, 'filter_3.5': 55}},
            'filters_0.5_2.5_4.5': {'page': 7, 'x': ((74.61, -3.0), (259.12, 1.0)), 'y': ((282.86, 0.0), (98.35, 4.0)),
                                    'curves': {'white_light': 89, 'filter_0.5': 88, 'filter_2.5': 87, 'filter_4.5': 90}},
        },
        # 2 s exposures, DEKTOL; log sensitivity = log(1 / (erg/cm2)) to reach
        # the density above D-min. Gridlines 0.0 .. 3̄.0 and the 1.0 tick. The
        # D 0.70 curve's pen lifts twice (its bridges are pieces of drawing 37);
        # the D 1.60 curve ends in drawing 38.
        'sensitivity': {'page': 6, 'x': ((368.26, 250.0), (549.12, 700.0)), 'y': ((273.35, -3.0), (121.88, 1.0)),
                        'curves': {'d_0_3': 35, 'd_0_7': ['36:0', '37:0', '36:1', '37:1'], 'd_1_6': ['37:2', '37:3', 38]}},
        # ISO speed / range, F surface. DEKTOL 1:2, 60 s, 20 C:
        #   none P500 R100; -1 P250 R140; 0 R140; 1/2 R130; 1 R130; 1 1/2 R120;
        #   2 R120; 2 1/2 R110; 3 R100; 3 1/2 R80 (all P250); 4 P125 R70;
        #   4 1/2 P125 R50; 5+ P125 R40.
        # POLYMAX RT 15 s, 37.8 C: none P500 R100; -1 .. 3 1/2 P320 with
        #   R140 140 130 120 120 110 110 90 80; 4 .. 5+ P125 R70 60 50.
        # (N and E surfaces differ by up to R20; see the sheet.) Nominal
        # white-light grade 2.5.
        'note': ('Absolute log H (lux-s). F surface, DEKTOL 1:2 60 s. '
                 'ISO R (DEKTOL): none 100, -1 140, 0 140, 1/2 130, 1 130, 1.5 120, 2 120, 2.5 110, 3 100, 3.5 80, 4 70, 4.5 50, 5+ 40. '
                 'ISO P (DEKTOL): none 500, -1..3.5 250, 4..5+ 125. D-max about 2.12, D-min about 0.06.'),
    },
    'kodak_polycontrast_iv_rc': {
        'pdf': 'paper_kodak_polymax/g4037.pdf', 'name': 'Kodak Polycontrast IV RC',
        'source': 'Kodak G-4037 (revised 6-05)', 'kind': 'paper',
        # F surface, POLYMAX filters, DEKTOL 1:2, 60 s at 20 C. Absolute log
        # lux-seconds -3.0 .. 1.0, density 0 .. 3.0 (frame corners; the ticks
        # at -2, -1, 0 and 1.0, 2.0 agree). Curves are told by dash pattern,
        # as the legend pairs them: solid white light, then 1, 3 and 5+.
        'characteristic': {'page': 6, 'x': ((370.09, -3.0), (554.61, 1.0)), 'y': ((286.56, 0.0), (101.69, 3.0)),
                           'curves': {'white_light': 5, 'filter_1': 6, 'filter_3': 7, 'filter_5plus': 8}},
        'extras': {
            # The same filters machine processed in POLYMAX RT, 15 s at 37.8 C,
            # and both processes on the N and E surfaces.
            'f_polymax_rt': {'page': 6, 'x': ((369.50, -3.0), (553.93, 1.0)), 'y': ((542.55, 0.0), (358.25, 3.0)),
                             'curves': {'white_light': 18, 'filter_1': 19, 'filter_3': 20, 'filter_5plus': 21}},
            'n_dektol': {'page': 7, 'x': ((77.05, -3.0), (261.56, 1.0)), 'y': ((247.05, 0.0), (62.53, 3.0)),
                         'curves': {'white_light': 5, 'filter_1': 6, 'filter_3': 7, 'filter_5plus': 8}},
            'n_polymax_rt': {'page': 7, 'x': ((80.99, -3.0), (265.62, 1.0)), 'y': ((503.94, 0.0), (319.30, 3.0)),
                             'curves': {'white_light': 18, 'filter_1': 19, 'filter_3': 20, 'filter_5plus': 21}},
            'e_dektol': {'page': 7, 'x': ((357.52, -3.0), (542.13, 1.0)), 'y': ((245.45, 0.0), (61.01, 3.0)),
                         'curves': {'white_light': 31, 'filter_1': 32, 'filter_3': 33, 'filter_5plus': 34}},
            'e_polymax_rt': {'page': 7, 'x': ((357.11, -3.0), (541.57, 1.0)), 'y': ((501.81, 0.0), (317.31, 3.0)),
                             'curves': {'white_light': 44, 'filter_1': 50, 'filter_3': 51, 'filter_5plus': 52}},
        },
        # 2 s, DEKTOL. The highest curve is D 0.30 (long dashes), then D 0.70
        # (short dashes), then D 1.60 (solid). Gridlines at -2.0 and 0.0.
        'sensitivity': {'page': 8, 'x': ((85.55, 250.0), (265.78, 700.0)), 'y': ((169.97, -2.0), (94.03, 0.0)),
                        'curves': {'d_0_3': 7, 'd_0_7': 6, 'd_1_6': 5}},
        # The sheet's ISO table is the same as Polymax II RC's, figure for figure
        # (F surface, DEKTOL: none P500 R100; -1 .. 3 1/2 P250 R140 140 130 130
        # 120 120 110 100 80; 4, 4 1/2, 5+ P125 R70 50 40).
        'note': ('Absolute log H (lux-s). F surface, DEKTOL 1:2 60 s. '
                 'ISO R (DEKTOL): none 100, -1 140, 0 140, 1/2 130, 1 130, 1.5 120, 2 120, 2.5 110, 3 100, 3.5 80, 4 70, 4.5 50, 5+ 40. '
                 'ISO P (DEKTOL): none 500, -1..3.5 250, 4..5+ 125. D-max about 2.12 (2.2 in POLYMAX RT; N surface 1.7), D-min about 0.06.'),
    },
    'kodak_endura_premier': {
        'pdf': 'paper_kodak_endura/e4070.pdf', 'name': 'Kodak Endura Premier',
        'source': 'Kodak E-4070 (October 2011)', 'kind': 'paper',
        # 0.5 s exposure, RA-4 45 s at 35 C, Status A. Frame corners -3.0 / 0.0
        # and 0.0 / 3.0; the ticks at -2, -1 and 1.0, 2.0 agree. R tops out
        # highest (the cyan dye), then G, then B.
        'characteristic': {'page': 3, 'x': ((364.68, -3.0), (549.21, 0.0)), 'y': ((257.17, 0.0), (72.55, 3.0)),
                           'curves': {'red': 8, 'green': 9, 'blue': 10}},
        # Per dye-forming layer: yellow-forming = blue, magenta = green, cyan = red.
        'sensitivity': {'page': 3, 'x': ((350.59, 250.0), (551.08, 750.0)), 'y': ((429.4, -1.0), (353.6, 1.0)),
                        'curves': {'blue': 15, 'green': 16, 'red': 17}},
        # Normalized: each dye peaks at 1.0 (no neutral or D-min drawn).
        'dyes': {'page': 4, 'x': ((76.83, 400.0), (261.26, 700.0)), 'y': ((270.92, 0.0), (86.57, 2.5)),
                 'curves': {'cyan': 26, 'magenta': 27, 'yellow': 28}},
        'note': ('Absolute log H (lux-s), 0.5 s, RA-4, Status A. No ISO speed or range published. '
                 'D-max about R 2.76, G 2.52, B 2.44; D-min about 0.10, 0.10, 0.08. Dyes normalized to peak 1.0.'),
    },
    'kodak_portra_endura': {
        'pdf': 'paper_kodak_endura/e4021-200909.pdf', 'name': 'Kodak Portra Endura',
        'source': 'Kodak E-4021 (September 2009)', 'kind': 'paper',
        # 0.5 s, RA-4 45 s at 35 C, Status A. Each curve is drawn as nineteen
        # short drawings, joined here. The density ticks (1.0, 2.0) sit 1.4 pt
        # above where the frame foot would put them, so they set y; x is the
        # frame (3̄.0 .. 0.0), which the 1̄.0 tick confirms.
        'characteristic': {'page': 6, 'x': ((374.19, -3.0), (558.70, 0.0)), 'y': ((210.4, 1.0), (148.6, 2.0)),
                           'curves': {'red': list(range(24, 43)), 'green': list(range(43, 62)), 'blue': list(range(62, 81))}},
        # E-4021's spectral graphs serve both Portra and Supra Endura.
        'sensitivity': {'page': 7, 'x': ((74.1, 250.0), (274.6, 750.0)), 'y': ((482.8, -1.0), (407.1, 1.0)),
                        'curves': {'blue': 36, 'green': 35, 'red': 34}},
        'dyes': {'page': 7, 'x': ((81.4, 400.0), (265.4, 700.0)), 'y': ((297.5, 0.0), (113.1, 2.5)),
                 'curves': {'cyan': 26, 'magenta': 25, 'yellow': 24}},
        'note': ('Absolute log H (lux-s), 0.5 s, RA-4, Status A. Low-contrast portrait paper (discontinued). '
                 'No ISO speed or range published. D-max about R 2.66, G 2.66, B 2.43; D-min about 0.11. Dyes normalized to peak 1.0.'),
    },
    'kodak_supra_endura': {
        'pdf': 'paper_kodak_endura/e4021-200909.pdf', 'name': 'Kodak Supra Endura',
        'source': 'Kodak E-4021 (September 2009)', 'kind': 'paper',
        # As Portra Endura's. Its log H labels and ticks are uneven (the 1̄.0
        # tick sits 15 pt right of an even spacing); the frame's corners and the
        # 2̄.0 tick agree on 61.5 pt per unit, so the frame sets x.
        'characteristic': {'page': 6, 'x': ((370.40, -3.0), (554.91, 0.0)), 'y': ((462.9, 1.0), (401.0, 2.0)),
                           'curves': {'red': list(range(86, 105)), 'green': list(range(113, 132)), 'blue': list(range(132, 151))}},
        'sensitivity': {'page': 7, 'x': ((74.1, 250.0), (274.6, 750.0)), 'y': ((482.8, -1.0), (407.1, 1.0)),
                        'curves': {'blue': 36, 'green': 35, 'red': 34}},
        'dyes': {'page': 7, 'x': ((81.4, 400.0), (265.4, 700.0)), 'y': ((297.5, 0.0), (113.1, 2.5)),
                 'curves': {'cyan': 26, 'magenta': 25, 'yellow': 24}},
        'note': ('Absolute log H (lux-s), 0.5 s, RA-4, Status A. Slightly higher contrast than Portra Endura. '
                 'No ISO speed or range published. D-max about R 2.65, G 2.59, B 2.52; D-min about 0.10. Dyes normalized to peak 1.0.'),
    },
}
