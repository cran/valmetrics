#' @title mape

#' @description Calculates the Mean absolute percentage error (MAPE) from observed
#'and predicted values.

#' @inherit mae return author 

#' @inheritParams mae

#' @return Mean absolute percentage error (MAPE)

#' @details Interpretation: smaller is better.

#' @inherit mae return references 

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' mape(o=obs, p=pred)
#'
#' @export
mape<-function(o, p){
  a<-abs(o-p)
  b<-o
  mean(a/b)
}
