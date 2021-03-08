#' cor_matrix
#'
#' This function finds a correlation matrix for numeric values for a given year
#' @param year Specific year to find a correlation matrix
#' @export
#' @examples
#' cor_matrix(1997)

cor_matrix <- function(year){
  year_filtered <- dplyr::filter(nba, Year == year)
  numeric_only <- purrr::keep(year_filtered, is.numeric)
  cor <- cor(numeric_only)

  return( cor )
}


