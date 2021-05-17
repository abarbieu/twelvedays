#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import english
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
pluralize_gift <- function(gift){

  gift <- gift %>%
    str_replace("$", "s") %>%
    str_replace("ys$", "ies") %>%
    str_replace("ooses$", "eese")

  return(gift)

}
