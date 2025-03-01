#' Puts the various parts of speech together into a full phrase.
#'
#' @param num An integer
#' @param num_word A string corresponding to the integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import english
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export


make_phrase <- function(num, num_word, item, verb, adjective, location){
  verb <- str_replace_na(verb, "")
  adjective <- str_replace_na(adjective, "")
  location <- str_replace_na(location, "")

  englishNum <- if(num == 1) "a" else as.english(num)
  pluralizedGift <- if(num == 1) item else pluralize_gift(item)
  phrase <- glue("{englishNum} {adjective} {pluralizedGift} {verb} {location}") %>%
    str_replace("  +", " ")
  phrase <- str_replace(phrase,"  +", " ") %>%
    str_replace(" +$", "")
  return(phrase)

}
