#' @title precision

#' @description Calculates the Precision from observed and predicted values.

#' @inherit mae return author

#' @inheritParams mae

#' @return  Precision

#' @details Interpretation: smaller is better.

#' @inherit mae return references

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' precision(o=obs, p=pred)
#'
#' @export
precision<-function(o, p){
  sqrt((rmse(o,p)^2)+(me(o,p)^2))
}
