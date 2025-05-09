# Supplementary Tables

- **Table S1**: ColocBoost xQTL-only colocalization and AD-xQTL colocalization results.
    - *TableS1_ROSMAP_xQTL_only_colocboost_export.bed*: colocalization results for 17 xQTL-only in ROSMAP corhorts
    - *TableS1_ROSMAP_eQTL_only_colocboost_export.bed*: colocalization results for 10 eQTL-only in ROSMAP corhorts
    - *TableS1_ROSMAP_bulk_only_colocboost_export.bed*: colocalization results for 3 bulk-only in ROSMAP corhorts
    - *TableS1_ROSMAP_pseudo_bulk_only_colocboost_export.bed*: colocalization results for 6 pseudo-bulk-only in ROSMAP corhorts
    - *TableS1_GTEx_brain_eQTL_only_colocboost_export.bed*: colocalization results for 13 brain eQTL-only GTEx cohorts
    - *TableS1_AD_Bellenguez_ROSMAP_xQTL_colocboost_export.bed*: colocalization results for AD Bellenguez GWAS with 17 xQTL in ROSMAP corhorts
- **Table S2**: Significantly enriched pathways for genes underlying neuron- and microglia-specific colocalizations.
- **Table S3**: GTEx eQTL from 13 bulk brain tissues. 
- **Table S4**: ColocBoost 95% CoS-gene links validated by two CRISPRi data. 
- **Table S5**: List of annotations used in S-LDSC.
- **Table S6**: 57 complex diseases used in disease heritability enrichment analysis. 
- **Table S7**: 129 variants with MaxVCP>0.5 enriched in variants confidently fine‐mapped (PIP>0.95) in 94 UK Biobank traits and 930 Million Veteran Program (MVP) GWAS traits.
- **Table S8**: Heritability enrichment analysis for AD GWAS in Bellenguez 2022 conditional on 97 baseline-LD annotations.
- **Table S9**: Feature comparison of multi-trait colocalization methods (green: feature supported/allowed). 
- **Table S10**: Realistic cross-trait sharing patterns from genome-wide fine-mapping results from 62 FunGen-xQTL contexts by calculating how often signals overlapped among those contexts and then sampled from these observed overlap frequencies to define what subset of traits each simulated causal variant share.
- **annotations_maxVCP**: Folder includes 5 maxVCP-based annotation in disease heritability enrichment analysis.

### Column Descriptions for Table S1.

| Column Name           | Type      | Description                                                                 |
|-----------------------|-----------|-----------------------------------------------------------------------------|
| `chr`                 | integer   | Chromosome number                                                           |
| `start`               | integer    | Genomic start coordinate (0-based)                                          |
| `end`                 | integer   | Genomic end coordinate (1-based)                                            |
| `a1`                  | character | Effect allele                                                               |
| `a2`                  | character | Reference allele                                                            |
| `variant_ID`          | character | Unique variant ID in format `chr:pos:ref:alt` for ROSMAP and `chr_pos_ref_alt_b38` for GTEx                            |
| `gene_ID`             | character | Ensembl gene ID                                                             |
| `event_ID`        | character | Trait combination that colocalizes within the same 95% colocalization confidence set (CoS).                             |
| `cos_ID`          | character | Unique identifier for each 95% colocalization confidence set (CoS).                                                    |
| `vcp`             | double    | Variant Colocalization Probability—estimated probability that a variant is shared among colocalized traits.            |