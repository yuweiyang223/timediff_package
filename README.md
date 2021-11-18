Learn how to use timediff
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

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
#> Downloading GitHub repo stat545ubc-2021/timediff_package@HEAD
#> pillar    (1.6.2  -> 1.6.4 ) [CRAN]
#> lifecycle (1.0.0  -> 1.0.1 ) [CRAN]
#> crayon    (1.4.1  -> 1.4.2 ) [CRAN]
#> tibble    (3.1.4  -> 3.1.6 ) [CRAN]
#> rlang     (0.4.11 -> 0.4.12) [CRAN]
#> glue      (1.4.2  -> 1.5.0 ) [CRAN]
#> diffobj   (0.3.4  -> 0.3.5 ) [CRAN]
#> cli       (3.0.1  -> 3.1.0 ) [CRAN]
#> desc      (1.3.0  -> 1.4.0 ) [CRAN]
#> waldo     (0.3.0  -> 0.3.1 ) [CRAN]
#> pkgload   (1.2.1  -> 1.2.3 ) [CRAN]
#> digest    (0.6.27 -> 0.6.28) [CRAN]
#> cpp11     (0.3.1  -> 0.4.1 ) [CRAN]
#> generics  (0.1.0  -> 0.1.1 ) [CRAN]
#> testthat  (3.0.4  -> 3.1.0 ) [CRAN]
#> lubridate (1.7.10 -> 1.8.0 ) [CRAN]
#> Installing 16 packages: pillar, lifecycle, crayon, tibble, rlang, glue, diffobj, cli, desc, waldo, pkgload, digest, cpp11, generics, testthat, lubridate
#> 将程序包安装入'C:/Users/Yuwei/AppData/Local/Temp/RtmpaCAXYW/temp_libpath54813972324'
#> (因为'lib'没有被指定)
#> package 'pillar' successfully unpacked and MD5 sums checked
#> package 'lifecycle' successfully unpacked and MD5 sums checked
#> package 'crayon' successfully unpacked and MD5 sums checked
#> package 'tibble' successfully unpacked and MD5 sums checked
#> package 'rlang' successfully unpacked and MD5 sums checked
#> package 'glue' successfully unpacked and MD5 sums checked
#> package 'diffobj' successfully unpacked and MD5 sums checked
#> package 'cli' successfully unpacked and MD5 sums checked
#> package 'desc' successfully unpacked and MD5 sums checked
#> package 'waldo' successfully unpacked and MD5 sums checked
#> package 'pkgload' successfully unpacked and MD5 sums checked
#> package 'digest' successfully unpacked and MD5 sums checked
#> package 'cpp11' successfully unpacked and MD5 sums checked
#> package 'generics' successfully unpacked and MD5 sums checked
#> package 'testthat' successfully unpacked and MD5 sums checked
#> package 'lubridate' successfully unpacked and MD5 sums checked
#> 
#> The downloaded binary packages are in
#>  C:\Users\Yuwei\AppData\Local\Temp\RtmpEFSmnn\downloaded_packages
#>          checking for file 'C:\Users\Yuwei\AppData\Local\Temp\RtmpEFSmnn\remotes47204108437f\stat545ubc-2021-timediff_package-1a21e1e/DESCRIPTION' ...  v  checking for file 'C:\Users\Yuwei\AppData\Local\Temp\RtmpEFSmnn\remotes47204108437f\stat545ubc-2021-timediff_package-1a21e1e/DESCRIPTION'
#>       -  preparing 'timediff':
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   v  checking DESCRIPTION meta-information
#>       -  checking for LF line-endings in source and make files and shell scripts
#>   -  checking for empty or unneeded directories
#>      Omitted 'LazyData' from DESCRIPTION
#>       -  building 'timediff_0.0.0.9000.tar.gz'
#>      
#> 
#> 将程序包安装入'C:/Users/Yuwei/AppData/Local/Temp/RtmpaCAXYW/temp_libpath54813972324'
#> (因为'lib'没有被指定)
library(timediff)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
# example 1
timediff(as.Date("2021-10-01"), as.Date("2021-10-04"))
#> [1] 0.01
# example 2
# install.packages("datateachr")
# install.packages("lubridate")
date1<-timediff(datateachr::vancouver_trees$date_planted, lubridate::ymd("2021-10-04"))
head(date1)
#> [1] 22.74 25.36 27.88 25.45 27.82    NA
```

This package is special because it also works on list inputs:

``` r
timediff(lubridate::ymd("20120101"),lubridate::ymd(c("20130101","20150101")))
#> [1] 1 3
```
