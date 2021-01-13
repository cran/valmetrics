#' @title r2

#' @description Calculates the Coefficient of determination (R2) from observed
#'and predicted values.

#' @inherit mae return author 

#' @inheritParams mae

#' @return Coefficient of determination (R2)

#' @details Interpretation: larger is better.

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' r2(o=obs, p=pred)
#'
#' @export
r2<-function(o, p){
  #rsq in Excel
  (sum((o-mean(o))*(p-mean(p)))/sqrt(sum((o-mean(o))^2)*sum((p-mean(p))^2)))^2
}

