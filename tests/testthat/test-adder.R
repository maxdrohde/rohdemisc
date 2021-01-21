test_that("adder works", {
  expect_equal(adder(7,8), 7+8)
  expect_false(adder(3,4) == 3+5)
})
