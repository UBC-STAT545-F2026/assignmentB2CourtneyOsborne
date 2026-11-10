#testing that the output of this function is a ggplot object
test_that("The histogram function returns a ggplot object",{
  test <- histogram(penguins, bill_len)
  expect_s3_class(test, "ggplot")
})
#testing that an error will through when a categorical variable is used
test_that("categorical variable returns an error", {
  expect_error(histogram(penguins, species))
})
#testing that specifying a different bin width from the default is successful
test_that("The histogram function allows for a specified bin width", {
  expect_no_error(histogram(penguins, flipper_len, bin_width = 5))
})
