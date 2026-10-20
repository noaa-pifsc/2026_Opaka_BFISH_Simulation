# Opakapaka BFISH Simulation

This repository contains the operating-model and estimation-model simulation, Open Science Grid (OSG) job scripts, result-processing code, and technical memo for the Hawaiian 'opakapaka fishery-independent survey sampling analysis.

## Start here

For a full rerun of the simulation, begin with [R/steps_for_OM_EM_setup.qmd](R/steps_for_OM_EM_setup.qmd). It documents how to create the recruitment-deviation and fishing-mortality inputs, assemble scenario directories, retrieve OSG outputs, and aggregate results. Run the required code chunks in order from an R session at the repository root; do not render this workflow document to execute the full analysis.

Use [R/run-analysis.qmd](R/run-analysis.qmd) for the OSG-specific steps: building the Apptainer container, selecting the matching scenario scripts, submitting jobs, monitoring them, and downloading outputs.

## Local setup

The analysis was developed with R 4.4.2. After cloning the repository, open `Opaka_simulation.Rproj` or start R in the repository root and restore the locked R package environment:

```r
renv::restore()
```

Rendering the technical memo also requires Quarto and a PDF-capable LaTeX installation. The full simulation requires an OSG account with access to the configured project and data directory; these requirements are described in [R/run-analysis.qmd](R/run-analysis.qmd).

## Recreate the technical memo

After the result CSVs have been generated or retrieved, render the report from the repository root:

```
quarto::quarto_render("Report", output_format = "pdf", quiet = FALSE)
```

## Github Disclaimer

This repository is a scientific product and is not official communication of the National Oceanic and Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project code is provided on an ‘as is’ basis and the user assumes responsibility for its use. Any claims against the Department of Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.
