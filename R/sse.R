#' @title sse

#' @description Calculates the sum of squares for error (SSE) from observed and
#' predicted values.

#' @inherit mae return author

#' @inheritParams mae

#' @return Sum of squares for error (SSE).

#' @details Interpretation: smaller is better.

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' sse(o=obs, p=pred)
#'
#' @export
sse<-function(o, p){
  sum((o-p)^2)
  }

