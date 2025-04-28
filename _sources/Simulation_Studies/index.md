# Simulation Studies

This directory contains simulation designs and implementation codes used in the paper.


## 1. Simulation Design Overview

This section provides a summary of the simulation notebooks (1-11) that implement different aspects of our multi-trait colocalization method evaluations.

- **Phenotype simulation**: Establishes the fundamental simulation framework for generating synthetic phenotype data. Simulates phenotype data (Y matrix) based on real genotype data (X matrix) using total heritability and SNP-level heritability approaches. Configurable for different numbers of traits (2, 5, 10, 20) and causal variants with controllable heritability.


- **Run ColocBoost**: Executes the ColocBoost algorithm on simulated datasets to identify colocalizing variants and trait clusters. Processes and standardizes results for performance evaluation with key output metrics.

- **Other Colocalization Methods**: Implements competing colocalization methods (HyprColoc, MOLOC, and COLOC (V5)) for benchmarking. Standardizes outputs across methods to enable fair comparison.

- **Result Summary**: Calculates performance metrics including power and false discovery rates from method results. Generates standardized comparison tables summarizing method effectiveness across simulation scenarios.

- **Secondary simulations**: Creates advanced simulation scenarios including 50-trait datasets and complex colocalization configurations. Implements specialized trait clustering patterns (5+5, 3+3+2+2) and random variant sharing to test method robustness.

- **GWAS Simulation**: Implements simulations specifically designed to mimic real-world GWAS summary statistics.

- **Correlated Simulation **: Evaluates method performance under scenarios with correlated traits and complex pleiotropy patterns.

- **Null simulation**: Tests type I error control and false discovery rates under null scenarios where no colocalization exists.

- **FineBoost (single trait ColocBoost)**: Demonstrates the FineBoost extension that incorporates fine-mapping capabilities into the ColocBoost framework.

- **Run OPERA**: Compares performance with the OPERA method and evaluates under OPERA-specific simulation settings.

- **OPERA: Run OPERA Original Proportion**: Implements the original OPERA design for benchmark comparisons and methodological validation.

Part of the data needed is provided in the **Data** folder.


## 2. References

[1] [simxQTL](https://github.com/StatFunGen/simxQTL): In house simulation R package to support investigations of various QTL association methods.

[2] [colocboost](https://github.com/StatFunGen/colocboost): R package implements ColocBoost for multi-trait colocalization analysis. See details in our [tutorial website](https://statfungen.github.io/colocboost/).

[3] [hyprcoloc](https://github.com/cnfoley/hyprcoloc): R package implements HyPrColoc, an efficient deterministic Bayesian divisive clustering algorithm using GWAS summary statistics, that can detect colocalization across vast numbers of traits simultaneously.

[4] [moloc](https://github.com/clagiamba/moloc): R package implements MOLOC, an extension of COLOC, a Bayesian method for colocalization across multiple traits.

[5] [coloc](https://github.com/chr1swallace/coloc/): R package implements COLOC that can be used to perform genetic colocalisation analysis of two potentially related phenotypes, to ask whether they share common genetic causal variant(s) in a given region. COLOC (V5) introduces use of the SuSiE approach to deal with multiple causal variants rather than conditioning or masking.

[6] [OPERA](https://github.com/wuyangf7/OPERA): software tool implements the OPERA (omics pleiotropic association) method, which allows for testing the combinatorial pleiotropic associations between multiple molecular phenotypes (e.g., expression level of a gene and DNA methylation level at CpG sites) with a complex trait of interest using summary-level data from GWAS and molecular QTL studies.


