#' @title mse

#' @description Calculates the Mean squared error (MSE) from observed and
#' predicted values.

#' @inherit mae return author

#' @inheritParams  mae

#' @return Mean squared error (MSE).
#'
#' @details Interpretation: smaller is better. This metric is sometimes called mean squared
#' deviation (MSD or RMSD2).
#' 
#' @inherit mae return references
#'
#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' mse(o=obs, p=pred)
#'
#' @export
mse<-function(o, p){
  mean((p-o)^2)
}












