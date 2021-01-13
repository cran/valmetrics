#' @title me

#' @description Calculates the Mean  error (ME) from observed and
#' predicted values.

#' @inherit mae return author

#' @inheritParams mae

#' @return Mean error (ME).

#' @details Interpretation: smaller is better. Sometimes called bias. 
 
#' @inherit mae return references 

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' me(o=obs, p=pred)
#'
#' @export
me<-function(o, p) return(mean(p-o))












