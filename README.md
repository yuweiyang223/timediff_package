Learn how to use timediff
================

# timediff

The goal of timediff is to calculate the time difference between two
dates.

This package timediff contains a function named ‘timediff()’.

Use ‘timediff(start\_date, end\_date)’ will give you the time difference
between the start date and end date as a number of years rounded to two
decimal places.

The inputs need to be in date format. Use ‘ymd()’ from lubridate package
or ‘as.Date()’ from base package.

The function will remove the NA values before calculation. No extra work
needed to handle NA values.

## Installation

timediff is not yet on CRAN. But you can download it from github
repository. The development version from [GitHub](https://github.com/)
with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2021/timediff_package")
```

## Example

This is a basic example which shows you how to solve a common problem:

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
