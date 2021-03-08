#' Oldest Player
#'
#' This function finds the oldest player for a given year
#' @param year Specific year to find the oldest player
#' @export
#' @examples
#' oldest(1997)

oldest <- function(year){
  year_filtered <- dplyr::select(dplyr::filter(nba, Year == year), Player, Age)
  oldest <- head(dplyr::arrange(year_filtered,desc(Age)), n=1)

  return( oldest )
}


