#' @title mde

#' @description Calculates the Median error (MdE) from observed and predicted 
#' values.

#' @inherit mae return author

#' @inheritParams mae

#' @return Median error (MdE)

#' @details Interpretation: smaller is better. Similar to mean error (bias) but 
#' less sensitive to large errors. Sometimes called bias. 

#' @inherit mae return references 

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' mde(o=obs, p=pred)
#'
#' @export
mde<-function(o, p){
  stats::median(p-o)
}
