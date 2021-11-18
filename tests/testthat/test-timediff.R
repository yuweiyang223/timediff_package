test_that("Testing Time differeence function", {
  expect_error(time_diff(numeric(0), "3"))
  expect_error(time_diff("abcddd", ymd("20120101")))
  expect_error(time_diff(20211201,20120101))
})


test_that("Testing Time differeence function", {
  expect_is(timediff, "function")
})

test_that("Testing Time differeence function", {
  expect_equal(timediff(lubridate::ymd("2012-01-01"),lubridate::ymd("20140101")),2.00)
  expect_equal(timediff(lubridate::ymd("20120101"), lubridate::ymd(c("20130101","20150101"))),c(1.00,3.00))
  expect_equal(timediff(lubridate::ymd(c("20120101", NA)), lubridate::ymd(c("20130101","20150101"))), c(1.00, NA))
})
