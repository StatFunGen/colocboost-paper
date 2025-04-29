
# Setting Up Jupyter Book with GitHub Pages for ColocBoost manuscript

Data and code to reproduce each figure in ColocBoost manuscript


## 1. Installation and Environment Setup

Install Jupyter Book and related tools

```bash
pixi global install jupyter-book ghp-import
```

## 2. Initialize A Jupyter Book

Create a new Jupyter Book in the root directory of this project:

```bash
jupyter-book create manuscript-website
```

## 3. Set Up Book Structure

The created template will have:
- `_config.yml`: Configuration for the book
- `_toc.yml`: Table of contents structure
- Sample content files

Let's customize these for this project:

### Custom _config.yml

Create or modify the `_config.yml` file:

```yaml
# Book settings
title: ColocBoost Manuscript Resources
author: Xuewei Cao with input from Gao Wang
logo: logo.png  # Add a logo file to your repo if you have one
copyright: "2025"  # Current year

# Force re-execution of notebooks on each build
execute:
  execute_notebooks: force

# Define the name of the latex output file for PDF builds
latex:
  latex_documents:
    targetname: book.tex

# Add a bibtex file for citations
bibtex_bibfiles:
  - references.bib

# Information about where the book exists on the web
repository:
  url: https://github.com/StatFunGen/colocboost
  branch: main  # or whatever your branch is called

# Add GitHub buttons to your book
html:
  use_issues_button: true
  use_repository_button: true
```

### Custom _toc.yml

Create or modify `_toc.yml` file to include all figure notebooks. Here is an example of the main figures:

```yaml
# Table of contents
# Learn more at https://jupyterbook.org/customize/toc.html

format: jb-book
root: index
chapters:
  - file: intro
  - file: Main_Figures/index
    sections:
      - file: Main_Figures/Figure_2/index
        sections:
          - file: Main_Figures/Figure_2/Figure_2a
          - file: Main_Figures/Figure_2/Figure_2b
          - file: Main_Figures/Figure_2/Figure_2c
          - file: Main_Figures/Figure_2/Figure_2d
          - file: Main_Figures/Figure_2/Figure_2e
      - file: Main_Figures/Figure_3/index
        sections:
          - file: Main_Figures/Figure_3/Figure_3a
          - file: Main_Figures/Figure_3/Figure_3b
          - file: Main_Figures/Figure_3/Figure_3c
          - file: Main_Figures/Figure_3/Figure_3d
          - file: Main_Figures/Figure_3/Figure_3e
          - file: Main_Figures/Figure_3/Figure_3f
          - file: Main_Figures/Figure_3/Figure_3g
          - file: Main_Figures/Figure_3/Figure_3h
          - file: Main_Figures/Figure_3/Figure_3i
      - file: Main_Figures/Figure_4/index
        sections:
          - file: Main_Figures/Figure_4/Figure_4a
          - file: Main_Figures/Figure_4/Figure_4b
          - file: Main_Figures/Figure_4/Figure_4c
          - file: Main_Figures/Figure_4/Figure_4d
          - file: Main_Figures/Figure_4/Figure_4e
      - file: Main_Figures/Figure_5/index
        sections:
          - file: Main_Figures/Figure_5/Figure_5abc
          - file: Main_Figures/Figure_5/Figure_5d
      - file: Main_Figures/Figure_6/index
        sections:
          - file: Main_Figures/Figure_6/Figure_6a
          - file: Main_Figures/Figure_6/Figure_6b
          - file: Main_Figures/Figure_6/Figure_6c
          - file: Main_Figures/Figure_6/Figure_6d
          - file: Main_Figures/Figure_6/Figure_6e
          - file: Main_Figures/Figure_6/Figure_6f
          - file: Main_Figures/Figure_6/Figure_6g
          - file: Main_Figures/Figure_6/Figure_6h
          
  - file: Simulation_Codes/index
    sections:
      - file: Simulation_Codes/1_Phenotype_simulation
      - file: Simulation_Codes/2_Run_Colocboost
      - file: Simulation_Codes/3_Other_Methods
      - file: Simulation_Codes/4_Result_Summary
      - file: Simulation_Codes/5_Simulation_secondary
      - file: Simulation_Codes/6_Simulation_GWAS
      - file: Simulation_Codes/7_Simulation_correlated
      - file: Simulation_Codes/8_Null_Simulation
      - file: Simulation_Codes/9_Fineboost
      - file: Simulation_Codes/10_OPERA_simulation
      - file: Simulation_Codes/11_OPERA_original_design
      
  - file: Data_Applications/index
```

## 4. Create Index Markdown Files

You'll need to create index.md files for each section. Here's an example structure:

```bash
# Root index.md
echo -e "# ColocBoost Manuscript Resources\n\nCode and data to reproduce figures in ColocBoost manuscript." > index.md

# Main figures index
mkdir -p Main_Figures
echo -e "# Main Figures\n\nThis section contains the main figures from our analysis." > Main_Figures/index.md

# Create index files for each figure group
for i in {2..6}; do
  mkdir -p Main_Figures/Figure_$i
  echo -e "# Figure $i\n\nAnalysis and results for Figure $i." > Main_Figures/Figure_$i/index.md
done
```

## 5. Build the Book


```bash
jupyter-book build . --config manuscript-website/_config.yml --toc manuscript-website/_toc.yml
```

This will generate the HTML files in the `_build/html` directory.

## 6. Deploy to GitHub Pages

Use `ghp-import` to publish your book:

```bash
ghp-import -n -p -f _build/html
```

This will:
- Copy the contents of `_build/html` to a branch called `gh-pages`
- Push this branch to GitHub
- Configure it as a GitHub Pages source

## 7. Set Up GitHub Pages in Repository Settings

1. Go to your repository on GitHub
2. Navigate to Settings > Pages
3. Ensure the source is set to the `gh-pages` branch and the folder is `/ (root)`
4. Save the settings

The site should be live at: https://statfungen.github.io/colocboost-paper/

## 8. Optional: Set Up GitHub Actions for Automatic Deployment

Create a file `.github/workflows/deploy-book.yml`:

```yaml
name: deploy-book

on:
  push:
    branches:
      - main

jobs:
  deploy-book:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2

    - name: Set up Python 3.9
      uses: actions/setup-python@v2
      with:
        python-version: 3.9

    - name: Install dependencies
      run: |
        pip install jupyter-book
        pip install ghp-import

    - name: Build the book
      run: |
        jupyter-book build . --config manuscript-website/_config.yml --toc manuscript-website/_toc.yml

    - name: GitHub Pages action
      uses: peaceiris/actions-gh-pages@v3.6.1
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./_build/html
```

This will automatically rebuild and publish your book whenever you push changes to the main branch.
