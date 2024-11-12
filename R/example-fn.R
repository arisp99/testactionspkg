#------------------------------------------------
#' Arithmetic Mode
#'
#' Compute the arithmetic mode of a set of data. The mode is the most commonly
#' appearing value.
#'
#' @param x A vector or list.
#'
#' @return The mode of the input.
#' @export
#' @examples
#' mode(c(1, 1, 2))
#' mode(list(1, 1, 2))
#' mode(c(1, NA, 1))
mode <- function(x) {
  unique <- unique(x)
  unique[which.max(tabulate(match(x, unique)))]
}
