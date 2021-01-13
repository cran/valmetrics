#' @title r

#' @description Calculates the Pearson product moment correlation coefficient (r)
#'  from observed and predicted values.

#' @inherit mae return author

#' @inheritParams mae

#' @return Pearson product moment correlation coefficient (r).
#'
#' @details Interpretation: larger absolute value is better.
#'
#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' r(o=obs, p=pred)
#'
#' @export
r<-function(o, p){
  sum((o-mean(o))*(p-mean(p)))/sqrt(sum((o-mean(o))^2)*sum((p-mean(p))^2))
}












