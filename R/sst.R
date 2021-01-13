#' @title sst

#' @description Calculates the Total sums of squares (SST) from a vector of
#' observed values.

#' @inherit mae return author

#' @inheritParams iqr

#' @return Total sums of squares (SST).
#'
#' @details Interpretation: smaller is better.
#'
#' @examples
#' obs<-c(1:10)
#' sst(o=obs)
#'
#' @export
sst<-function(o){
  sum((o-mean(o))^2)
  }












