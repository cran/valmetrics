#' @title mare

#' @description Calculates the Median absolute relative error (MARE) from observed
#'and predicted values.

#' @inherit mae return author

#' @inheritParams mae

#' @return Median absolute relative error (MARE)

#' @details Interpretation: smaller is better.

#' @inherit mae return references 

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' mare(o=obs, p=pred)
#'
#' @export
mare<-function(o, p){
  a<-abs(o-p)
  b<-o
  stats::median(a/b)
}

