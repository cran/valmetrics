#' @title mdse

#' @description Calculates the Median squared error (MdSE) from observed and
#' predicted values.

#' @inherit mae return author

#' @inheritParams  mae

#' @return Median squared error (MSE).
#'
#' @details Interpretation: smaller is better.

#' @inherit mae return references 

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' mdse(o=obs, p=pred)
#'
#' @export
mdse<-function(o, p){
  stats::median((p-o)^2)
}












