context("make_phrase")

test_that("make_phrase correctly concats variables", {
  expect_equal(make_phrase(1,"first","partridge", "flying in", "a burning", "pear tree"), "a partridge flying in a burning pear tree")
  expect_equal(make_phrase(1,"first","partridge", NA, NA, "pear tree"), "a partridge in a pear tree")
  expect_equal(make_phrase(12,"twelfth","lady", "dancing", NA, NA), "twelve ladies dancing")
})
