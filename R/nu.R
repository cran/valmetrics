#' @title nu

#' @description Calculates the Non-unity slope (NU) from observed
#'and predicted values.

#' @inherit mae return author

#' @inheritParams mae

#' @return Non-unity slope (NU)

#' @details Interpretation: closer to 1 is better.

#' @inherit mae return references

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' nu(o=obs, p=pred)
#'
#' @export
nu<-function(o, p){
  b<-sum((p-mean(p))*(o-mean(o)))/sst(o)
  ((1-b)^2)*sum((o^2)/length(o))
}
