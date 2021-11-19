Learn how to use timediff
================

# timediff

The goal of `timediff package` is to calculate the time difference
between two dates.

## Description of package

This ‘package timediff’ contains a function named `timediff()`.

Use `timediff(start_date, end_date)` will return the time difference
between the start date and end date as a number of years rounded to two
decimal places.

The inputs need to be in date format. Using `ymd()` from
`lubridate package` or `as.Date()` from base package.

This function will remove the NA values before calculation. No extra
work needed to handle NA values.

## Installation

timediff is not yet on CRAN. But you can download it from github
repository. The development version from [GitHub](https://github.com/)
with:

``` r
# Install devtools from CRAN
install.packages("devtools")

# install package from github
devtools::install_github("stat545ubc-2021/timediff_package")
```

## Example

These are 2 basic examples which shows you how to use timediff()
function.

``` r
library(timediff)
# example 1
timediff(as.Date("2021-10-01"), as.Date("2021-10-04"))
## [1] 0.01

# example 2
# install.packages("datateachr")
# install.packages("lubridate")
date1<-timediff(datateachr::vancouver_trees$date_planted, lubridate::ymd("2021-10-04"))
head(date1)
## [1] 22.74 25.36 27.88 25.45 27.82    NA
```

This package is special because it also works on list inputs:

``` r
timediff(lubridate::ymd("20120101"),lubridate::ymd(c("20130101","20150101")))
## [1] 1 3
```

``` r
timediff(lubridate::ymd(c("20120101", NA)), lubridate::ymd(c("20130101","20150101")))
## [1]  1 NA
```
