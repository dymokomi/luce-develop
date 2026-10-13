# Kodak patent reference constructions — extraction notes

These are reference emulsions taken from patent examples. They are labelled by patent and example and do not describe any commercial stock.

## Sources

| File | Patent / example | Sources used |
|---|---|---|
| us5500316.json | US 5,500,316 A, Example 1, Table 1, **Sample 1** (Sample 2 values kept as `laydown_sample2_mg_m2`) | Google Patents text (tables are present as text); PDF `patentimages.storage.googleapis.com/ec/34/47/730faad1060018/US5500316.pdf`. I rendered the scanned PDF pages 10–13 at 300 dpi and checked every number against the images. |
| us6680165.json | US 6,680,165 B1, Example 6, comparative **6.1** (Table VIII layer structure, Table IX P1 levels) | Google Patents text; PDF `patentimages.storage.googleapis.com/ed/68/fa/ec4d396ccef365/US6680165.pdf`. I checked against the rendered PDF pages 34–39 at 300 dpi. |

Downloads are in `download/us5500316/` and `download/us6680165/`. Nothing from them was executed. I wrote the structures out as SMILES by hand from the drawings. RDKit (in a scratch venv) then computed the formula and MW.

## Units as printed

- **US5500316:** "All laydowns are in units of millegrams per square meter" (sic). Grain data appears as "Diameter" and "Thickness" in μm, and iodide as "Iodide %".
- **US6680165 Table VIII:** "mg/sq meter". Table IX gives P1 in "g/m2" (`**g/m2`), and I converted those values ×1000 to mg/m². The emulsion table gives "Diameter (μm)", "Thickness (μm)", "% bromide" and "Dye load (mm/m)".

## Uncertainties and inferences (all are also flagged in the JSON)

### Both patents

- **Silver basis.** Neither patent states whether the emulsion laydowns are "as silver". Kodak practice usually is, but this is unconfirmed (*inference*).
- **Grain size.** "Diameter" is recorded as ECD. US5500316 defines ECD in the text, so this is likely correct (*inference*).
- **Equivalence.** I applied the coupling-site rule you specified. For the 4-arylazo-pyrazolone masking couplers (5500316 Coupler-7 = 6680165 Coup-9), "2-equivalent" is an *inference*, because the leaving group is the arylazo group.
- **Timing-group classes.** These are *inferred from the drawings*:
  - Carbamothioate cyclization (intramolecular nucleophilic displacement): 5500316 Coupler-2.
  - Quinone-methide elimination: 5500316 Coupler-4, 6680165 Coup-4 and Coup-10.
  - No timing group: Coupler-8/Coup-11 (PMT on a pyrazolone), Coupler-10/Coup-5 and Coup-12 (benzotriazoles), and Coup-6 (1-ethyl-mercaptotetrazole).
- **Roles.** The patents never name a compound's role (BARC, masking, scavenger, filter, UV and so on). Every role in the JSON is my *inference from the structure*.
- **Molecular weights.** All are *estimated* from hand-transcribed SMILES. One cross-check is possible: the patent's 1.076 mmol/m² = 0.646 g/m² for P1 implies 600.4 g/mol, and RDKit gives 598.8. Coupler-5/Coup-3 is drawn as a 2-pyridine salt, so I give MWs both with the salt and as the free acid.
- **Benzotriazole couplers** (Coupler-10/Coup-5, Coup-12). The N-attachment bond is drawn across N1/N2, so the attachment point is ambiguous. The SMILES uses N1.

### US5500316

- Layer 1 is assumed to sit nearest the support.
- No antihalation layer is listed. Process A includes "Remjet Removal", so I *infer* a rem-jet backing.
- The UV-absorbing layer and the overcoat are mentioned but have no composition or laydowns. They are included with empty component lists.
- The halide is assumed to be AgBrI.
- The fast yellow emulsion is "3-D", and its thickness is printed as "—" (null).
- Didodecylhydroquinone is named only. I assumed the 2,5-isomer for its MW.
- The suffixes {MD}, {SU} and {215O} on Couplers 6–8 are kept verbatim as `label_printed`. Their meaning is not explained.
- The Google OCR of the PDF text layer showed "Coupler-1 58" and "Coupler-7 {SU} 144 44". The images clearly read **158** and **144 / 144**, and those are the values used.
- No processing temperatures are given.

### US6680165

- **Missing P1 levels in Table VIII.** Table VIII prints "Table XI or Table X" (sic) for P1. I took the 6.1 values from Table IX: L2 0.645, L3 0.330, L4 0.070 g/m², total 1.045 (the sum checks), with red contrast 0.57.
- **S1.** S1 (dibutyl sebacate) is derived from the 1.0:1.0 weight ratio and is not printed per layer.
- **Coup-7 in Layer 3.** Coup-7 (a yellow image coupler) appears in cyan Layer 3 at 70 mg/m². I confirmed this on the image and kept it as printed. It may be intended or may be a misprint.
- **Iodide %.** Only % bromide is printed, so iodide = 100 − %Br is an *inference* that assumes no chloride.
- **Emulsion mapping.** Matching layer emulsion names (for example "Slow-slow cyan") to table rows (for example "SS cyan") is an *inference*.
- **Lippman emulsion.** The Lippman emulsion (54 mg/m², Layer 11) has no grain data.
- **Dye load.** The dye-load unit "(mm/m)" is probably mmol/mol Ag (*inference*).
- **Chem-2.** The structure is drawn oddly (a purine-like ring whose ring-fusion carbons have no double bond), and its role is not stated. Both its MW and its role are uncertain.
- **Coup-11.** The ballast ring is drawn saturated. I treated it as aromatic 2,4-di-t-pentylphenoxy, matching US5500316 Coupler-8 (*inference*).
- **Uncomputed MWs.** Dye-3 (the printed name is internally inconsistent), Dye-4 (sulfonate locants uncertain) and Chem-7 (a polymer) have no MW.
- **Sensitizing dyes.** The structures of SD1–SD9 are on PDF p.38. I did not transcribe them; only the set mapping is recorded.
- **Support.** The support for Example 6 is not specified. The text allows PEN with a magnetic layer.
- **Processing.** Example 6 says only "KODAK FLEXICOLOR C-41 chemistry". The Table II times (developer 120 s at 100 °F / 37.8 °C, stop 30, bleach 180, wash 180, fix 240, wash 180, Photoflow 30) are given for the single-layer examples. Applying them to 6.1 is an *inference*. Note that 120 s differs from the standard C-41 development time of 3′15″.

## Compounds shared between the two patents (same drawings)

| US5500316 | US6680165 |
|---|---|
| Coupler-1 | P1 |
| Coupler-5 | Coup-3 |
| Coupler-7 | Coup-9 |
| Coupler-8 | Coup-11 |
| Coupler-9 | Coup-8 |
| Coupler-10 | Coup-5 |
| Dye-1 | Dye-1 |

Coupler-4 (5500316) and Coup-4 (6680165) differ only in the tetrazole substituent (4-methoxybenzyl versus phenyl).
