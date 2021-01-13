#' @title sde

#' @description Calculates the Standard deviation of the error (SDE) from observed and
#' predicted values.

#' @inherit mae return author 

#' @inheritParams mae

#' @return Standard deviation of the error (SDE).
#'
#' @details Interpretation: smaller is better.
#' 
#' @inherit mae return references 
#'
#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' sde(o=obs, p=pred)
#'
#' @export
sde<-function(o, p){
  stats::sd(p-o)
}












