format_pdf_table <- function(data, column_names = names(data), group_rows = NULL,
                             float_position = NULL) {
  alignment <- c("|l", rep("r", ncol(data) - 2), "r|")
  table <- kableExtra::kbl(
    data,
    format = "latex",
    booktabs = FALSE,
    align = alignment,
    col.names = column_names,
    escape = FALSE
  )

  if (!is.null(group_rows)) {
    start_row <- 1L

    for (group_name in names(group_rows)) {
      end_row <- start_row + group_rows[[group_name]] - 1L
      table <- kableExtra::pack_rows(table, group_name, start_row, end_row)
      start_row <- end_row + 1L
    }

    multicolumn <- paste0("\\multicolumn{", ncol(data), "}{l}")
    bordered_multicolumn <- paste0("\\multicolumn{", ncol(data), "}{|l|}")
    table <- gsub(multicolumn, bordered_multicolumn, table, fixed = TRUE)
  }

  if (!is.null(float_position)) {
    table <- sub(
      "\\begin{table}",
      paste0("\\begin{table}[", float_position, "]"),
      table,
      fixed = TRUE
    )
  }

  knitr::asis_output(table)
}