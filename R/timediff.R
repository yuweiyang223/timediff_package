#' timediff() function
#'
#' This function calculates the time difference between two dates. It will return the time difference as a number in years rounded to two decimal places.
#'
#' @param start_date The date you want to calculate the time difference from this date
#' @param end_date The date you want to calculate the time difference to this date
#' @param na.rm Remove NA values before calculation
#'
#' @return A number in the unit of years rounded to two decimal places
#'
#' @details Inputs need to be in date format. You may use as.Date() or ymd() from the lubridate package to change the character or number into date format. If your inputs are not dates, the function will return an error message and tell you what format you have entered. So you can make adjustments accordingly.
#'
#' @examples
#' timediff(as.Date("2021-10-01"), as.Date("2021-10-04"))
#' timediff(datateachr::vancouver_trees$date_planted, lubridate::ymd("2021-10-04"))
#'
#' @export
timediff<-function(start_date, end_date, na.rm = TRUE){
  if(!lubridate::is.Date(start_date) | !lubridate::is.Date(end_date)){stop("Inputs should be date. ","start_date and end_date is ", class(start_date), " and ", class(end_date), ". Please check your input.")}
  else{round(base::as.numeric(difftime(end_date, start_date, units="days"))/365, 2)
  }
}

