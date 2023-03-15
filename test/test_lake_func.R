# Testing that our lake_func works with two different sets of data
test_that("lake_func_works", {
  expect_equal(lake_func(initial_level = 100000, precip_data = 10, outflow = 10, evap = 1), list(99999,-1))
  expect_equal(lake_func(initial_level = 200, precip_data = 1, outflow = 1, evap = 1), list(199,-1))
})
