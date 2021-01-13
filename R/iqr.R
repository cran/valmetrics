#' @title iqr

#' @description Calculates the Inter-quartile range (IQR) from a vector of
#' observed values.


#' @inherit mae return author
#' 
#' @param o A numeric vector. Observed values.

#' @return Inter-quartile range (IQR).
#'
#' @details The inter-quartile range (IQR) is the difference between the
#' 75-percentile and the 25-percentile of the observed values.

#' @examples
#' obs<-c(1:10)
#' iqr(o=obs)

#' @export
iqr<-function(o){
  q75<-stats::quantile(x=o, probs = 0.75, na.rm = T)
  q25<-stats::quantile(x=o, probs = 0.25, na.rm = T)
  as.numeric(q75-q25)
}












