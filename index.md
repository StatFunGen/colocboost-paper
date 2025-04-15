# ColocBoost Manuscript Resources

Code and data to reproduce figures in ColocBoost manuscript.


## About ColocBoost

ColocBoost is a statistical approach for identifying shared genetic influences across multiple traits and molecular phenotypes. ColocBoost is a multi-task learning approach to variable selection regression with highly correlated predictors and sparse effects, based on frequentist statistical inference. It provides statistical evidence to identify which subsets of predictors have non-zero effects on which subsets of response variables.

## Repository Structure

This Jupyter Book contains the codes and data used to generate all figures from our manuscript. Each notebook is fully executable and documented to ensure reproducibility of our results. The main sections include:

- **Figure 2**: Performance comparison of ColocBoost with other multi-trait colocalization methods in simulation benchmarks
- **Figure 3**: ColocBoost xQTL analysis across cell types and traits modalities
- **Figure 4**: Validation of ColocBoost colocalization signals using CRISPR data
- **Figure 5**: Disease heritability analyses of variant-level functional annotations derived from ColocBoost
- **Figure 6**: AD–xQTL ColocBoost identifies colocalized variants between xQTLs and AD GWAS

## Getting Started

To navigate this resource, use the table of contents in the left sidebar. Each figure section contains interactive notebooks that allow you to:

1. View the code used to generate analyses
2. Examine data associated with the figures
3. Reproduce visualizations

## Computational Requirements

The analyses in this book were performed using:
- R version 4.1 or higher
- Key R packages: data.table, ggplot2, dplyr

