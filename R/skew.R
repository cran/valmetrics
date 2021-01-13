#' @title skew

#' @description Calculates the Skewness of residuals from observed and
#' predicted values.

#' @inherit mae return author

#' @inheritParams mae

#' @return Skewness of residuals.
#'
#' @details Interpretation: smaller is better.
#' 
#' @inherit mae return references 
#'
#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' skew(o=obs, p=pred)
#'
#' @export
skew<-function(o, p){
  res<-p-o
  mean(((res-mean(res))/stats::sd(res))^3)
}












