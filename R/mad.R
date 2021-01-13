#' @title mad

#' @description Calculates the Median absolute deviation (MAD) from observed and
#' predicted values.

#' @inherit mae return author 

#' @inheritParams mae

#' @return Median absolute deviation (MAD)
#'
#' @details Interpretation: smaller is better.
#' 

#' @inherit mae return references 
#'
#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' mad(o=obs, p=pred)
#'
#' @export
mad<-function(o, p){
  stats::median(abs(o-p))
}












