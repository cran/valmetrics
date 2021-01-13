#' @title rmdse

#' @description Calculates the Root median squared error (RMdSE) from observed
#' and predicted values.

#' @inherit mae return author 

#' @inheritParams mae

#' @return Root median squared error (RMdSE).

#' @details Interpretation: smaller is better.

#' @inherit mae return references 

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' rmdse(o=obs, p=pred)
#'
#' @export
rmdse<-function(o, p){
  sqrt(stats::median((p-o)^2))
}
