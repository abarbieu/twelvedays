context("pluralize_gift")

test_that("gift is properly pluralized", {
  expect_equal(pluralize_gift("coconut"), "coconuts")
  expect_equal(pluralize_gift("lady"), "ladies")
  expect_equal(pluralize_gift("goose"), "geese")
})
