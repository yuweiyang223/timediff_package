test_that("Testing different inputs", {
  expect_error(time_diff(numeric(0), "3"))
  expect_error(time_diff("abcddd", ymd("20120101")))
  expect_error(time_diff(20211201,20120101))
})


test_that("Testing timediff function", {
  # test timediff function on single value and vector
  expect_equal(timediff(lubridate::ymd("2012-01-01"),lubridate::ymd("20140101")),2.00)
  expect_equal(timediff(lubridate::ymd("20120101"), lubridate::ymd(c("20130101","20150101"))),c(1.00,3.00))
  expect_equal(timediff(lubridate::ymd(c("20120101", NA)), lubridate::ymd(c("20130101","20150101"))), c(1.00, NA))
})
