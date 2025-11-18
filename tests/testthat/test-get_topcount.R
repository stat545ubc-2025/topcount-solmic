df <- data.frame(group = c("A", "B", "A", "C", "A", "B"))

test_that("topcounts works correctly", {

  # Expect error when n is not numeric
  expect_error(topcount(df, group, n = "two"))

  # Expect error when n is negative
  expect_error(topcount(df, group, n = -5))

  # Expect correct number of returned rows
  expect_equal(nrow(top_count(df, group, n = 2)), 2)
})
