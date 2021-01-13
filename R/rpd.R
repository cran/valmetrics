#' @title rpd

#' @description Calculates the Ratio of performance to deviation (RPD) from observed
#'and predicted values.

#' @author Kristin Piikki, Johanna Wetterlind, Mats Soderstrom & Bo Stenberg
#' \email{kristin.piikki@slu.se}

#' @inheritParams mae

#' @return Ratio of performance to deviation (RPD).

#' @details Interpretation: larger is better.
 
#' @inherit mae return references

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' rpd(o=obs, p=pred)
#'
#' @export
rpd<-function(o, p){
  stats::sd(o)/rmse(o,p)
}

