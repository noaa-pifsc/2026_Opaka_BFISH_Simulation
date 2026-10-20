# Simulation Report — Quarto Project

NOAA-compliant tech memo for the opakapaka simulation study.
PDF output only. Plots and tables generated dynamically with code blocks. 

## Book Structure

```
tech memo/
├── _quarto.yml                           # Project config (PDF output, book metadata)
├── index.qmd                             # Executive Summary
├── references.bib                        # BibTeX references
├── chapters/
│   ├── 01_introduction.qmd              # Introduction 
│   ├── 02_Methods.qmd                   # Methods
│   ├── 03_Results.qmd                   # Results
│   ├── 04_discussion.qmd                # Discussion
│   ├── 05_references.qmd                # References

```

## Getting Started in VSCode

### One-time setup

1. **Open the project** — open the main directory `2026_Opaka_BFISH_Simulation` in a new directory and make sure the working directory is set to the root directory. 

2. **Install TinyTeX** (if you don't already have a LaTeX distribution):
   ```r
   install.packages("tinytex")
   tinytex::install_tinytex()
   ```

3. **Install the quarto R package**  
   ```r
   install.packages("quarto")
   ```

### Rendering the book

- **Render button (single file):** Open any `.qmd` file and click the **Preview** button in the
  upper right-hand corner. This renders just that chapter to PDF for quick review.

- **Render Book**
  ```r
  quarto::quarto_render("Report", output_format = "pdf", quiet = FALSE)
  ```
 This renders all chapters into a single PDF, saved to `_output/`.
