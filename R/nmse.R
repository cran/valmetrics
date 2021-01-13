#' @title nmse

#' @description Calculates the Normalized mean squared error (NMSE) from observed
#'and predicted values.

#' @inherit mae return author

#' @inheritParams mae

#' @return Normalized mean squared error (NMSE)

#' @details Interpretation: smaller is better.
#' 
#' @references Park S. J., Vlek P. L. G. 2002. Environmental correlation of 
#' three-dimensional soil spatial variability: a comparison of three adaptive 
#' techniques. Geoderma, 109(1-2), 117-140.

#' @inherit mae return references

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' nmse(o=obs, p=pred)

#' @export
nmse<-function(o, p){
  mse(o,p)/stats::var(o)
}
