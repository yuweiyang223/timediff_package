% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/timediff.R
\name{timediff}
\alias{timediff}
\title{timediff() function}
\usage{
timediff(start_date, end_date, na.rm = TRUE)
}
\arguments{
\item{start_date}{The date you want to calculate the time difference from this date}

\item{end_date}{The date you want to calculate the time difference to this date}

\item{na.rm}{Remove NA values before calculation}
}
\value{
A number in the unit of years rounded to two decimal places
}
\description{
This function calculates the time difference between two dates. It will return the time difference as a number in years rounded to two decimal places.
}
\details{
Inputs need to be in date format. You may use as.Date() or ymd() from the lubridate package to change the character or number into date format. If your inputs are not dates, the function will return an error message and tell you what format you have entered. So you can make adjustments accordingly.
}
\examples{
timediff(as.Date("2021-10-01"), as.Date("2021-10-04"))
timediff(datateachr::vancouver_trees$date_planted, lubridate::ymd("2021-10-04"))

}
