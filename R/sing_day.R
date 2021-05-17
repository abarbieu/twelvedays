#' Produces the string for one day of the song.
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import english
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sing_day <- function(dataset, line, phrase_col){

  phrases <- dataset %>% pull({{phrase_col}})
  phrases <- phrases[1:line]


  intro <- glue("On the {dataset[line,]$Day.in.Words} of Christmas, my true love gave to me:")

  if(line==1)
    return(glue("{intro}\n{phrases[1]}"))

  middle <- paste(phrases[line:2], collapse = ',\n')

  end <- glue("and {phrases[1]}")

  return(glue("{intro}\n{middle}\n{end}"))

}
