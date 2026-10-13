#!/usr/bin/env python3
"""Turn the patents' coatings (dev/film/constructions/*.json, transcribed from
Kodak US 6,680,165 example 6.1 and US 5,500,316 sample 1) into the reference
chemistry's layers (src/film_constructions.lucb). These are reference
emulsions named by patent and example, not any commercial stock.

Per layer, top (bath side) first:
- dry thickness: gelatin at 1.34 g/cm³, silver halide (laydowns taken as
  silver, Kodak's usual convention, the patents do not say: AgBr(I) mass =
  Ag × 187.8/107.9) at 6.47, every organic compound and coupler solvent at 1.1
  (estimates); a layer the patent prints without laydowns (US 5,500,316's UV
  layer and overcoat): 1 µm, an estimate;
- the record: the emulsion layers' colour;
- image coupler (µmol/m², molecular weights from RDKit on the transcribed
  structures): image, masking and bleach-accelerator couplers forming the
  layer's own dye; their silver per dye, the µmol-weighted mean of 2 and 4;
- DIR coupler: DIR and DIAR couplers (any dye), released through a timing
  group (film_chemistry's k_release) when most of the layer's carry one,
  else directly;
- scavenger: a hydroquinone-type scavenger (didodecylhydroquinone; Chem-5;
  Chem-2, whose role the patent does not state) as a first-order rate on
  oxidized developer, 1 /(mM·s) times its concentration in the swollen layer
  (an estimate);
- halide (µmol/m²) and binding sites: the grains' surface (tabular: two faces
  and the rim, from the printed diameter and thickness), one site per 0.5 nm²
  (an estimate of an adsorbed mercaptotetrazole's footprint).

    make_constructions.py      # writes src/film_constructions.lucb
"""
import json
import math
from pathlib import Path

here = Path(__file__).resolve().parent
SWELL = 2.6


def compound_mw(compounds, cid):
    c = compounds.get(cid) or {}
    return c.get('mw_g_mol')


def layer_of(raw, compounds):
    gel = 0.0
    organics = 0.0
    halide_mol = 0.0
    surface = 0.0
    dyes = {}
    for comp in raw.get('components', []):
        kind = comp.get('kind')
        mg = comp.get('laydown_mg_m2') or 0.0
        if kind == 'gelatin':
            gel += mg
        elif kind == 'emulsion' or kind == 'silver':
            if kind == 'silver':
                organics += 0.0
                halide_g = mg / 1000.0
                gel += 0.0
                organics_note = 'grey silver'
                halide_mol += 0.0
                continue
            silver_mol = mg / 1000.0 / 107.87
            halide_mol += silver_mol
            mass = silver_mol * 187.8
            volume = mass / 6.47  # cm³/m²
            g = comp.get('grain') or {}
            d = g.get('ecd_um_printed_as_diameter') or g.get('diameter_um')
            t = g.get('thickness_um')
            if d and t:
                ratio = 2.0 / (t * 1e-4) + 4.0 / (d * 1e-4)  # per cm
            elif d:
                ratio = 6.0 / (d * 1e-4)
            else:
                ratio = 6.0 / 1e-4
            surface += volume * ratio  # cm² per m²
        else:
            organics += mg
            cid = comp.get('id') or comp.get('name_printed')
            dyes.setdefault(cid, 0.0)
            dyes[cid] += mg
    dry = gel / 1000.0 / 1.34 + organics / 1000.0 / 1.1 + halide_mol * 187.8 / 6.47
    return dry, halide_mol * 1e6, surface, dyes


def record_of(role):
    role = role.lower()
    if 'red-sensitive' in role or 'cyan' in role and 'interlayer' not in role:
        return 0
    if 'green-sensitive' in role or 'magenta' in role and 'interlayer' not in role:
        return 1
    if 'blue-sensitive' in role or ('yellow' in role and 'filter' not in role):
        return 2
    return -1


COLOURS = {0: 'cyan', 1: 'magenta', 2: 'yellow'}
SCAVENGERS = ('Didodecylhydroquinone', 'Chem-5', 'Chem-2')


def build(name):
    data = json.load(open(here / 'constructions' / f'{name}.json'))
    compounds = data['compounds']
    out = []
    for raw in data['layers']:
        if raw.get('role') == 'support':
            continue
        dry, halide, surface_cm2, parts = layer_of(raw, compounds)
        record = record_of(raw.get('role', ''))
        coupler = 0.0
        silver_per_dye = 0.0
        dir_total = 0.0
        timed = 0.0
        scavenger_umol = 0.0
        for cid, mg in parts.items():
            c = compounds.get(cid) or {}
            role = (c.get('role') or '').lower()
            mw = c.get('mw_g_mol')
            if cid in SCAVENGERS or 'scavenger' in role and 'hydroquinone' in role:
                if mw:
                    scavenger_umol += mg / mw * 1000.0
                continue
            if not mw or 'coupler' not in role:
                continue
            umol = mg / mw * 1000.0
            if 'dir' in role or 'diar' in role:
                dir_total += umol
                if str(c.get('timing_group', '')).startswith('yes'):
                    timed += umol
                continue
            colour = str(c.get('dye_color') or '')
            if record >= 0 and colour.startswith(COLOURS[record]):
                coupler += umol
                silver_per_dye += umol * (4.0 if str(c.get('equivalence', '')).startswith('4') else 2.0)
        if dry <= 0.0:
            dry = 1.0
        wet = dry * SWELL
        sites = surface_cm2 * 1e-4 / 0.5e-18 / 6.02214076e23 * 1e6  # µmol/m²
        out.append({
            'name': raw.get('name') or f"Layer {raw.get('layer_number')}",
            'role': raw.get('role', ''),
            'dry': round(dry, 4),
            'record': record,
            'coupler': round(coupler, 3),
            'equivalence': round(silver_per_dye / coupler, 3) if coupler > 0 else 4.0,
            'dir': round(dir_total, 3),
            'timed': 'true' if dir_total > 0 and timed > dir_total / 2 else 'false',
            'scavenger': round(1.0 * scavenger_umol / wet, 4),
            'halide': round(halide, 2),
            'sites': round(sites, 4),
            'cells': max(1, round(dry / 1.0)),
        })
    out.reverse()
    return data, out


def emit(func, label, layers):
    rows = []
    for L in layers:
        rows.append(f"        # {L['name']}: {L['role']}\n"
                    f"        Layer(dry = {L['dry']}, record = {L['record']}, coupler = {L['coupler']}, equivalence = {L['equivalence']}, "
                    f"dir_coupler = {L['dir']}, timed = {L['timed']}, scavenger = {L['scavenger']}, halide = {L['halide']}, "
                    f"sites = {L['sites']}, cells = {L['cells']})")
    return (f"## {label}\npub func {func}() -> Layer[{len(layers)}]:\n    return [\n" + ",\n".join(rows) + "]\n")


if __name__ == '__main__':
    head = ('## Reference constructions for the reference chemistry (film_chemistry.lucb),\n'
            '## from patents, named by patent and example: not any commercial stock.\n'
            '## Generated by dev/film/make_constructions.py from dev/film/constructions/\n'
            '## (transcribed and checked against the scanned pages; NOTES.md there): do not edit.\n'
            '## Top (bath side) first; amounts µmol/m², thickness µm dry.\n'
            'from film_chemistry import Layer\n\n')
    parts = []
    _, a = build('us6680165')
    parts.append(emit('us6680165_example_6_1', 'Kodak US 6,680,165 B1, comparative example 6.1: a C-41 colour negative (13 layers).', a))
    _, b = build('us5500316')
    parts.append(emit('us5500316_sample_1', 'Kodak US 5,500,316 A, example 1, sample 1: an ECN-2 motion picture negative (rem-jet backed).', b))
    (here.parent.parent / 'src' / 'film_constructions.lucb').write_text(head + '\n'.join(parts))
    for name, layers in (('us6680165', a), ('us5500316', b)):
        print(name)
        for L in layers:
            print(f"  {L['name']:10s} rec {L['record']:2d} dry {L['dry']:6.2f} coupler {L['coupler']:8.1f} nu {L['equivalence']:.2f} "
                  f"dir {L['dir']:6.1f} timed {L['timed']} scav {L['scavenger']:7.3f} halide {L['halide']:8.0f} sites {L['sites']:6.2f}")
