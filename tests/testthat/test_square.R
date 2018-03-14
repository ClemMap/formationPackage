context("Élever au carré")

test_that("le carré est-il bien carré ?", {
  x <- c(2, 4, 10)
  res <- carre(x)
  expect_length(x, length(res))
})
