# ColocBoost Manuscript Resources

Code and data to reproduce figures in ColocBoost manuscript.


## About ColocBoost

ColocBoost is a statistical approach for identifying shared genetic influences across multiple traits and molecular phenotypes. ColocBoost is a multi-task learning approach to variable selection regression with highly correlated predictors and sparse effects, based on frequentist statistical inference. It provides statistical evidence to identify which subsets of predictors have non-zero effects on which subsets of response variables.

## Repository Structure

This repository contains the codes and data used to generate all figures from our manuscript, available at: https://github.com/StatFunGen/colocboost-paper

- **Simulation Studies**: This directory contains simulation designs and implementation codes used in the paper. 

- **Data Applications**: This section contains the data applications discussed in the ColocBoost paper.

- **Main Figures**: Each notebook is fully executable and documented to ensure reproducibility of our results.

- **Supplementary Figures**: Each notebook is fully executable and documented to ensure reproducibility of our results shown in Supplementary Figures. 

Due to the file size limitation of CRAN release, the full dataset used in [tutorials](https://statfungen.github.io/colocboost/articles/index.html) can be found in this repo.

- Reproducible dataset in Figure 2b: `Main_Figures/Figure_2/data/*.rda`
- Full example data with individual level and summary statistics for 5 traits: `Simulation_Studies/Data/*.rda`


## Getting Started

To navigate this resource, use the table of contents in the left sidebar. Each figure section contains interactive notebooks that allow you to:

1. View the code used to generate analyses
2. Examine data associated with the figures
3. Reproduce visualizations

## Computational Requirements

The analyses in this book were performed using:
- R version 4.1 or higher
- Key R packages: data.table, ggplot2, dplyr

## ColocBoost Tutorial Website

Learn how to perform colocalization analysis with step-by-step examples. For detailed tutorials and use cases in [Tutorials](https://statfungen.github.io/colocboost/articles/index.html).

## Citation

If you use ColocBoost in your research, please cite:

> Cao X, Sun H, Feng R, Mazumder R, Najar CFB, Li YI, de Jager PL, Bennett D, The Alzheimer's Disease Functional Genomics Consortium, Dey KK, Wang G. (2025+). Integrative multi-omics QTL colocalization maps regulatory architecture in aging human brain. medRxiv. [https://doi.org/10.1101/2025.04.17.25326042](https://doi.org/10.1101/2025.04.17.25326042)

