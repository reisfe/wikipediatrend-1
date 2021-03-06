#' Function to extract the day
#' 
#' Function to extract the day from a timestamp of e.g. class POSIXlt, POSIXct,
#' Date, or character. If the option is of type character it should be in the
#' form of yyyy-mm-dd.
#' 
#' @param timestamp Some sort of timestamp e.g. of class POSIXlt, POSIXct, Date,
#'   or character. If the option is of type character it should be in the form
#'   of yyyy-mm-dd.
#'   
#'   

wp_day          <- function(timestamp) UseMethod("wp_day")

#' @describeIn wp_day extract day from timestamp
wp_day.POSIXlt  <- function(timestamp) {
  timestamp$mday
}

#' @describeIn wp_day extract day from timestamp
wp_day.default  <- function(timestamp) {
  as.POSIXlt(wp_date(timestamp))$mday
}
