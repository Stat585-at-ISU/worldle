# just collecting all the tests from the slides

test_that("issue a warning when x is not numeric and return NA", {
  x <- letters[1:3]
  # This tests the value and that a warning is generated
  expect_warning(
    expect_true(is.na(mymean(x))) # Function returns NA
  )
})

test_that("return NA when x has NAs and na.rm = F", {
  # return NA when x has NAs and na.rm = F
  expect_true(is.na(mymean(c(1:8, NA))))
})

test_that("a single numeric value equal to sum(x)/length(x) and na.rm = T", {
  # return a single numeric value equal to sum(x)/length(x)
  x <- 1:8
  y <- c(1:8, NA)
  # Test that mean(1:8) returns a numerically correct response
  expect_equal(mymean(x), 4.5)
  # Test that mean(c(1:8, NA)) equals mean(1:8) when na.rm = T
  expect_equal(mymean(y, na.rm = T), mymean(x))
})
