context("Imputation valeurs manquantes")

test_that("Plus de NA", {
  x <- c(1,2,1,NA,2)
  res <- impute_na(x)
  expect_false(anyNA(res))
})


test_that("Imputation mediane", {
  x <- rnorm(100)
  x[50] <- NA
  res <- impute_na(x, "mediane")
  expect_equal(res[50], median(x, na.rm = TRUE))
})
