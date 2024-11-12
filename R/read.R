#' Basic function to read in a file
#'
#' @param .file Path to a local file.
#' @param .col_names Copied from vroom.
#' @param .col_select Copied from vroom.
#' @param .name_repair Copied from vroom.
#'
#' @export
read <- function(.file,
                 .col_names = FALSE,
                 .col_select = everything(),
                 .name_repair = "unique") {
  vroom::vroom(
    file = .file,
    col_names = .col_names,
    col_select = .col_select,
    show_col_types = FALSE,
    .name_repair = .name_repair
  )
}
