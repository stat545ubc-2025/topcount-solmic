#'@title Top count of a data set
#'@description
#'This function will output the top count for a data set.
#'If dplyr isn't imported ensure all functions from external packages use package::function()
#'
#'@param data A data frame (tibble or data.frame).
#'@param col An unquoted column name (tidyselect). The column to count by.
#'@param n Integer. Number of top rows to return. Must be positive.
#'
#'@return A tibble with two columns: the grouping column and `count`.
#'
#'@examples
#'library(tibble)
#'df <- tibble(city = c("A","A","B","C","A","B"))
#'topcount::get_topcount(df, city, n = 2)
#'@import dplyr
#'@export

get_topcount <- function(data, col, n = 10) {
  if (!is.numeric(n) || n <= 0){
    stop("The argument 'n' must be a positive number.")
  }
  data %>%
    count({{ col }}, name = "count") %>%
    arrange(desc(count)) %>%
    slice_head(n = n)
}
