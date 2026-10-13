# Kodak interimage test coatings: US6190848 and US6309811

These are Kodak **patent test coatings** (bilayers, an 11-layer and a 12-layer multilayer).
They are not commercial stocks. Every record is labelled by patent, example and sample.

Files:
- `us6190848.json`: the IEM (triazole/benzotriazole) patent. It has the bilayer BL-1..27 (Tables II and III), the single-layer DIR strength test (Table I), and the 11-layer ML-C-0..ML-I-6 (Tables IV and V).
- `us6309811.json`: the IEH (purine) patent. It has the same bilayer format (BL-1..25), Table I, and the 12-layer ML-1..ML-4 (the second "Table III").
- `mw.json`: the SMILES as transcribed, with RDKit formula and MW (run in `rdenv`).
- `scripts/smiles.py` makes `mw.json`. `scripts/build.py` makes the two JSON files. `scripts/split.py` and `scripts/html2txt.py` are helpers.
- `download/<patent>/`: Google Patents HTML, the PDF, and text extracts. All of it is untrusted, and none of it was executed.
- `pages/<patent>/p-NN.png`: PDF pages at 200 dpi. `pages/zoom/` holds 400 dpi crops (IDIR-2, IDIR-5, IEH-G/H/I).

## Sources
- US6190848B1: https://patents.google.com/patent/US6190848B1/en ; PDF https://patentimages.storage.googleapis.com/a4/76/ba/36f0d6e4668a2a/US6190848.pdf (30 pp.)
- US6309811B2: https://patents.google.com/patent/US6309811B2/en (the B1 URL returns 404) ; PDF https://patentimages.storage.googleapis.com/35/74/aa/ec5c30339bc677/US6309811.pdf (26 pp.)

I checked every number against the rendered scan pages. Google's text and the scan agree everywhere I checked.
- US6190848: bilayer p.18; Tables II and III p.20; ML p.20-21; Tables IV and V p.26; structures p.5 (IEM), p.7 and p.9 (DIRs), p.18-25.
- US6309811: bilayer p.17; Tables II and III and the ML layers p.19; variants p.22; ML Table III p.23; structures p.4-9 and p.17-22.

## Owner's readings, checked
| Item | Owner | Patent | Status |
|---|---|---|---|
| receiver Ag | 0.81 g/m2 | "0.81 green sensitized AgIBr tabular emulsion" (g/m2) | confirmed |
| causer Ag | 0.79 g/m2 | "0.79 blue sensitized AgIBr tabular emulsion" | confirmed |
| causer DIR | 0.11 mmol/m2 | "the DIR at 0.11 mmol/m2"; Table II header "IDIR-2 in Blue Layer"; US6309811 says "IDIR-2 at 0.11 mmol/m2" | confirmed: **IDIR-2** |
| IEM laydown | 0.0072 mmol/m2 | "7.2x10^-3 mmol/m2 (... 1.67 mmol per mole silver as AgBr or 0.96 mmol per mole of silver)" | confirmed |
| R values | none 1.23, A 1.65, C 1.64, D 1.49 | BL-1 1.23, IEM-A 1.65, IEM-C 1.64, IEM-D 1.49 | confirmed; also IEM-B 1.39, IEM-H 1.44, CIEM-1..17 1.18-1.31 |
| US6309811 ML dD | ML-1 -0.101/-0.273, ML-2 -0.131/-0.287, ML-3 -0.106/-0.236, ML-4 -0.164/-0.268 | identical | confirmed |

The silver basis is g Ag/m2. It follows from the patent's own arithmetic: 7.2e-3 / (0.81/107.87 mmol) = 0.96 mmol/mol, and 7.2e-3 / (0.81/187.77) = 1.67 "as AgBr".

## Key chemistry (structures transcribed from the drawings)
- **IDIR-2** (causer DIR, MW 979.7 estimated). It is a yellow pivaloylacetanilide coupler (2-Cl-5-NHSO2C16H33 anilide), 2-equivalent.
  - Coupling-off group: 4-nitro-2-[N-ethyl-N-(S-tetrazolyl-thiocarbonyl)aminomethyl]phenoxy.
  - Timing group: the drawing shows an o-aminomethylphenoxy carbamate (an intramolecular nucleophilic displacement timing group). **The release mechanism is my inference**; the patent does not describe it.
  - Inhibitor: 1-(propoxycarbonylmethyl)-5-mercaptotetrazole. It is "mild" and carries a hydrolyzable ester. The patent wants a developer half-life over 5 min and under 24 h.
  - 0.11 mmol/m2 is about 108 mg/m2 (computed).
  - Single-layer contrast reduction: -25.3% (mild < 45%).
- **IEM-A** (CLogP 7.78): 5-[5-(2,4-di-t-pentylphenoxy)pentanamido]-1H-benzotriazole, C27H38N4O2. The synthesis elemental analysis (C 71.96, H 8.50, N 12.44) confirms the structure exactly.
- **IEM-C** (6.21): 5-dodecanamido-1H-benzotriazole.
- **IEM-D** (7.98): 5-[2-(4-(4-hydroxyphenylsulfonyl)phenoxy)dodecanamido]-1H-benzotriazole.
- **What the IEMs and IEHs are:** non-coupling, ballasted N-H azoles (Formula I). They sit in the *receiver* and raise its sensitivity to the *mild* inhibitor released by the causer. They do not raise its sensitivity to strong inhibitors (PMT and the like). The N-H is essential: CIEM-13 and -14 are N-substituted and inactive. The patent claims a CLogP window of 4.75-9.0 (Medchem 3.54). In the patent's words: "the IEMs ... greatly increase the sensitivity to inhibition by these mild inhibitors in the layer in which the IEM is located".
- **IEH-A**: 6-decyloxypurine, MW 276.4. It is confirmed by the synthesis (3.29 g = 11.9 mmol) and by the Medchem SMILES the patent prints.
- **IDIR-6**: a pivaloylacetanilide that releases phenoxycarbonylbenzotriazole directly, with no timing group. The benzo-ring position of the ester is not specified.
- **CDIR-1**: a 1-naphthol coupler. Its coupling-off group is a 2-nitro-4-(thiomethyl)phenoxy timing group (quinone-methide release, **inferred**). It releases 1-(4-methoxybenzyl)-5-mercaptotetrazole, which the patent calls strong (-55.4%).
- **CDIR-2** (in the bilayer receiver at 0.03 g/m2): a magenta pyrazolone that releases PMT directly (-67.1%).
- **Couplers:**
  - M-1 (receiver, 0.045 g/m2): 2-equivalent arylthio pyrazolone. The printed 0.045 is low next to the 0.692 used in the single-layer test, but it is clearly printed.
  - Y-1 (causer, 0.91): 2-equivalent, with a 4-(4-hydroxyphenylsulfonyl)phenoxy coupling-off group.
- **Interlayer:** gelatin 0.64, ILS-1 0.11, FD-1 0.11.
  - ILS-1 is 2,5-di-t-octylhydroquinone, the Dox scavenger.
  - FD-1 is a furylidene-cyanobutenolide yellow filter dye. Its role is inferred: blue absorber.
- **Overcoat:** gelatin 2.79 with 0.02 "bis-vinylsulfonemethylether" (hardener).
- **Antihalation:** black colloidal silver 0.34, gelatin 2.41.

## Protocols, and what is NOT printed (left null)
- **Bilayer exposure.** The patent says only "a stepped exposure of either green light only or blue and green light combined". It does not give the source, filters, step tablet, step increment, exposure time or the B:G balance.
- **Multilayer exposure.** The causer record is stepped; the other two are "only flashed (non-imagewise)". Flash level and receiver base density are not printed.
- **Process.** The only reference is "KODAK FLEXICOLOR (C-41) process as described in British Journal of Photography Annual, 1988, pp196-198". Neither patent prints step times or temperatures.
  - US6309811 adds: "Color negative development times are typically 3' 15" or less".
  - The 37.8 C / 3:15 developer is general knowledge, not from these patents. Everything else (bleach, fix, wash, stabilizer) is null.
- **Contrast.** "the maximum slope between any two density points" of the sensitometric curve.
  - R = Cg / Cb+g, where Cg is the green-only contrast and Cb+g is the green-record contrast under blue+green exposure.
  - Densitometry type (Status M?) is not stated. Green/magenta density is implied.
- **Multilayer interimage.** Take the causer step nearest D = 1.5. Interimage is receiver D at that step minus receiver D at the causer's zero-exposure step.
- **Speed.** Exposure at Dmin + 0.15, normalized to the check.

## Differences between ML-1..ML-4 (US6309811)
- ML-1: IDIR-6 0.076 in L10 and in L11; CDIR-1 in L2-L4 and L10; no IEH.
- ML-2: IDIR-2 0.097 replaces IDIR-6 in L10 and L11. Using these MWs the two are equimolar within 1%, which also cross-checks both MWs.
- ML-3: ML-1 plus IEH-A 0.0012 in L7 and L8.
- ML-4: ML-2 plus IEH-A 0.0012 in L7 and L8.

## Uncertainties and flags
1. US6190848 Table II prints sample numbers BL-17 and BL-18 twice (comparative and inventive rows). Kept as printed.
2. Table III of US6190848 has its own check, BL-22, at R = 1.45 (BL-1 is 1.23). Likewise, US6309811 BL-20 gives 1.56 where BL-12 gives 1.45. These are separate coating sets, so compare only within a table.
3. The IDIR-6 laydown in bilayers BL-25..27 is not stated. It is presumably 0.11 mmol/m2.
4. No grain sizes, iodide or sensitizing dyes are given for the bilayer emulsions. They are null.
5. Typos in the US6190848 ML:
   - L6(ii) is printed "0.54x0.91", likely 0.091. I set it to null.
   - The IEM-A additions in ML-I-0..2 have no units. The Table IV ratios (0.14/1.4/14 mmol/mol) cannot be reproduced exactly from the printed laydowns with either g/m2 or mmol/m2.
   - The text says "Table IV-VII", but only IV and V exist.
6. Typos in the US6309811 ML: "0.1.22x0.11" read as 1.22, and "0.0.77x0.14" read as 0.77. The 0.0012 IEH-A is said to be "0.8 mmol/mol Ag"; the computed value is 0.94-0.96. Kept as printed.
7. IEH-G and IEH-I are drawn identically (6-tetradecylsulfinylpurine) but have different CLogP and results. One drawing is probably wrong, and I could not resolve which.
8. CIEH-4/-5 CLogP: the structure labels read 3.95/3.81, while Table II reads 3.81/3.60. Both are recorded. CIEH-5's substituent "SCH4SC4H9-n" is garbled, so it has no SMILES.
9. US6309811 DYE-2 is drawn with C=C where an imine N belongs, which is invalid. Its SMILES was inferred with =N- (same as US6190848 Dye-3).
10. The IDIR-1 linker is drawn aryl-CH2-S-tetrazole in US6190848 but aryl-S-CH2-tetrazole in US6309811. I used the US6190848 version; the MW is the same.
11. US6190848 ML layer 1 lists "DYE-1/2/3", while the structure list draws Dye-1..Dye-7. Matching them by number is an assumption. Dye-4 and Dye-5 are identical to US6309811's UV-1 and UV-2.
12. All MWs are RDKit values from hand-transcribed SMILES: neutral forms, with MC-1 as the bis-pyridinium salt. Floating substituents (the IDIR-5/6 benzotriazole ester position and N-attachment) were placed arbitrarily, which does not change the MW.
    - Independent confirmations: IEM-A (elemental analysis), IEH-A (synthesis yield), and the IDIR-2/IDIR-6 equimolar substitution.
13. The two patents' "Y-2", "B-1" and "OxDS-2" are **different compounds**. They carry suffixes [848]/[811] in the compound keys. M-1, Y-1, C-1, MC-1, MC-2, CDIR-1/2 and IDIR-1/2/5/6 are drawn identically in both.
14. Not transcribed, but drawn in the PDFs: the sensitizing dyes (RSD, GSD, BSD), CDIR-3..11, IDIR-3/4/7/8, and the IEM/IEH examples that were not tested.
