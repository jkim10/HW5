#' Most Assists
#'
#' This function finds the player with the most assists for a given year
#' @param year Specific year to find player with most assists
#' @export
#' @examples
#' most_assists(1997)

most_assists <- function(year){
  year_filtered <- dplyr::select(dplyr::filter(nba, Year == year), Player, AST)
  most_assists <- head(dplyr::arrange(year_filtered,desc(AST)), n=1)
  result <- dplyr::select(most_assists, Player, AST)

  return( result )
}


