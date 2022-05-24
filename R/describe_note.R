#' `Hmisc::describe` output in a Quarto callout note
#'
#'
#' Note: You must set `#| output = asis` within the Quarto block
#' @param data A data frame as input to `Hmisc::describe()`.
#' @param label A label for the note heading
#'
#' @export
#'
#' @examples
#' describe_note(mtcars)
#' describe_note(mtcars, label = "Data values in the `mtcars` dataset")
describe_note <- function(data,
                          label = "Expand for an overview of data values") {
  cat(":::{.callout-note collapse='true'}\n")
  cat(paste("##", label))
  cat("\n")
  cat(Hmisc::html(Hmisc::describe(data)))
  cat("\n:::")
}
