# Simulation Studies

This directory contains simulation designs and implementation codes used in the paper.


## 1. Simulation Design Overview

This section provides a summary of the simulation notebooks (1-11) that implement different aspects of our multi-trait colocalization method evaluations.

- **1_Phenotype_simulation.ipynb**: Establishes the fundamental simulation framework for generating synthetic phenotype data. Simulates phenotype data (Y matrix) based on real genotype data (X matrix) using total heritability and SNP-level heritability approaches. Configurable for different numbers of traits (2, 5, 10, 20) and causal variants with controllable heritability.


- **2_Run_Colocboost.ipynb**: Executes the ColocBoost algorithm on simulated datasets to identify colocalizing variants and trait clusters. Processes and standardizes results for performance evaluation with key output metrics.

- **3_Other_Methods.ipynb**: Implements competing colocalization methods (HyprColoc, MOLOC, and COLOC (V5)) for benchmarking. Standardizes outputs across methods to enable fair comparison.

- **4_Result_Summary.ipynb**: Calculates performance metrics including power and false discovery rates from method results. Generates standardized comparison tables summarizing method effectiveness across simulation scenarios.

- **5_Simulation_secondary.ipynb**: Creates advanced simulation scenarios including 50-trait datasets and complex colocalization configurations. Implements specialized trait clustering patterns (5+5, 3+3+2+2) and random variant sharing to test method robustness.

- **6_Simulation_GWAS.ipynb**: Implements simulations specifically designed to mimic real-world GWAS summary statistics.

- **7_Simulation_correlated.ipynb**: Evaluates method performance under scenarios with correlated traits and complex pleiotropy patterns.

- **8_Null_Simulation.ipynb**: Tests type I error control and false discovery rates under null scenarios where no colocalization exists.

- **9_Fineboost.ipynb**: Demonstrates the FineBoost extension that incorporates fine-mapping capabilities into the ColocBoost framework.

- **10_OPERA_simulation.ipynb**: Compares performance with the OPERA method and evaluates under OPERA-specific simulation settings.

- **11_OPERA_original_design.ipynb**: Implements the original OPERA design for benchmark comparisons and methodological validation.


## 2. Simulation Dependence

This section contains R functions for implementing competing multi-trait colocalization methods and supporting utilities.

- **colocboost_summary.r**: Contains the core implementation of summary colocalization results from ColocBoost.

- **fineboost_summary.r**: Contains the core implementation of summary fine-mapping results from FineBoost.

- **hypercoloc_set.r**: Contains configuration settings and implementation for running HyPrColoc, including parameter optimization and result parsing functions.

- **moloc_set.r**: Provides parameter settings and configuration for the moloc method, including prior specifications and output formatting.

- **moloc.r**: Implements core functionality for the moloc method, including posterior probability calculation for various causal configurations.

- **susie_coloc.r**: Adapts the SuSiE (Sum of Single Effects) fine-mapping framework for colocalization analysis across multiple traits.

- **ld_utils.R**: Contains utility functions for handling linkage disequilibrium (LD) matrices, including LD estimation, pruning, and conditioning operations that are used by multiple colocalization methods.



