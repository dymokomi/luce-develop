"""Fujifilm Product Information Bulletins: their sheets' vector graphs, for
read_drawings.py. Points are the PDF's (72 per inch). These sheets draw their
axis labels as outlines, not text, so the axes are set from each graph's
gridlines and frame (found by listing the line items of its grid drawing),
matched to the labels by eye on the rendered page.

Fujifilm gives no "Log H Ref". For the negative, 'grey_log_h' follows Kodak's
color negative sheets, whose Log H Ref is log10(14.5 / EI) on every current sheet
(Portra 160, 400, 800, Ektar 100). For the slide film it is ISO 2240's speed point,
10 / ISO lux-seconds, the rule make_stocks.py uses for Velvia 50."""

STOCKS = {
    'fuji_velvia_100': {
        'pdf': 'fuji_velvia_100/films_velvia-100_datasheet_01.pdf', 'name': 'Fujifilm Velvia 100',
        'source': 'Fujifilm AF3-202E (2005)', 'kind': 'reversal', 'ei': 100, 'kelvin': 5500.0,
        # log10(10 / 100); see the docstring. The curves stand at density 1.0 there.
        'grey_log_h': -1.0,
        # Status A, E-6. Legend: R solid, G dash-dot, B dashed (the drawings' dash
        # patterns match the legend's lines).
        'characteristic': {'page': 7, 'x': ((107.57, -3.0), (281.80, 1.0)), 'y': ((326.29, 0.5), (195.66, 3.5)),
                           'curves': {'red': 143, 'green': 142, 'blue': 144}},
        # Relative log sensitivity at 1.0 over D-min: one drawing, a piece per layer.
        'sensitivity': {'page': 7, 'x': ((347.05, 400.0), (521.80, 700.0)), 'y': ((262.76, 0.0), (205.13, 1.0)),
                        'curves': {'blue': '292:0', 'green': '292:1', 'red': '292:2'}},
        # Separated exposures, each dye normalized to a peak of 1.0.
        'dyes': {'page': 7, 'x': ((344.97, 400.0), (522.19, 700.0)), 'y': ((596.82, 0.0), (477.73, 1.0)),
                 'curves': {'yellow': '22:0', 'magenta': '22:1', 'cyan': '22:2'}},
        # One curve, daylight. Its 10 and 100 c/mm gridlines set x.
        'mtf': {'page': 7, 'x': ((170.91, 10.0), (255.20, 100.0)), 'y': ((541.11, 10.0), (462.39, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'visual': 460}},
        # The sheet's: read at a gross diffuse visual density of 1.0, 48 um.
        'rms_granularity': 8.0,
    },
    'fuji_pro_400h': {
        'pdf': 'fuji_pro_400h/films_pro-400h_datasheet_01.pdf', 'name': 'Fujifilm Pro 400H',
        'source': 'Fujifilm AF3-176E (2005)', 'kind': 'negative', 'ei': 400, 'kelvin': 5500.0,
        # log10(14.5 / 400); see the docstring.
        'grey_log_h': -1.44,
        'characteristic': {'page': 7, 'x': ((99.0, -3.5), (264.75, 0.5)), 'y': ((228.73, 0.5), (125.40, 3.0)),
                           'curves': {'blue': '66:0', 'green': '66:1', 'red': '66:2'}},
        # Relative log sensitivity at 1.0 over D-min. The axis has no numbers, only a
        # bar marked 1.0 spanning its two gridlines: the lower is set to 0.0. The
        # dashed 'fourth' curve is Fujifilm's fourth color-sensitive layer, drawn
        # as the "Cyan Sensitive Layer" (peak near 520 nm, about 1.2 below the
        # green layer's); it forms no image of its own but steers the red layer
        # through interlayer effects (the sheet's section 14-1).
        'sensitivity': {'page': 7, 'x': ((346.87, 400.0), (504.48, 700.0)), 'y': ((206.96, 0.0), (155.83, 1.0)),
                        'curves': {'blue': '365:0', 'green': '365:1', 'red': '365:2', 'fourth': 366}},
        # Mid-scale neutral and D-min. Its density gridlines are unevenly spaced
        # (by up to 0.02); the frame's foot (0.0) and the 2.0 line set y.
        'dyes': {'page': 7, 'x': ((334.86, 400.0), (522.71, 700.0)), 'y': ((538.69, 0.0), (386.04, 2.0)),
                 'curves': {'neutral': '624:0', 'd_min': '624:1'}},
        # One curve, daylight. Its frequency gridlines sit off a true log scale by up
        # to 1 pt; the 10 and 100 c/mm lines set x.
        'mtf': {'page': 7, 'x': ((173.96, 10.0), (256.04, 100.0)), 'y': ((477.22, 10.0), (389.70, 100.0)), 'log_x': True, 'log_y': True,
                'curves': {'visual': 471}},
        # Estimate. The sheet's diffuse rms granularity is 4, on Fujifilm's own
        # negative-film scale, which it says cannot be compared with reversal (or
        # Kodak) figures. Taken as Portra 400's estimate, the same speed class.
        'rms_granularity': 9.0,
        'note': "Fujifilm's own rms granularity figure is 4 on its negative-film scale; rms_granularity is an estimate.",
    },
}
