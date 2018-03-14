#' @title Moyenne et médiane sans valeur manquantes
#' @description Remplace les valeurs manquantes par la médiane ou la moyenne.
#'
#' @param x a vector
#' @param method a choice of "médiane" or "mean"
#'
#' @return a vector
#' @export
#' @importFrom stats median
#'
#' @examples
#' \dontrun{
#'  impute_na(x, "moyenne")
#' }
#'
#'
impute_na <- function(x, method = c("moyenne", "mediane")) {
  method <- match.arg(method)
  if (anyNA(x)) {
    if (method == "moyenne") {
      x[is.na(x)] <- mean(x, na.rm = TRUE)
    } else {
      x[is.na(x)] <- median(x, na.rm = TRUE)
    }
  }
  return(x)
}


