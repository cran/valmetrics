#' @title e

#' @description Calculates the Nash-Sutcliffe modelling efficiency (E) from observed and
#' predicted values.

#' @inherit mae return author 

#' @inheritParams mae

#' @return Nash-Sutcliffe modelling efficiency (E).

#' @details Interpretation: a value of 1 means that all predicted values are
#' equal to the observed values. A value of 0 means that the predictions explain
#' as much of the variation in the observed values as the mean of the observed
#' values does. A negative value means that the predictions are less accurate
#' the mean of the observed values.

#' @references Nash, J. E., & Sutcliffe, J. V. (1970). River flow forecasting
#' through conceptual models part I. A discussion of principles. Journal of
#' hydrology, 10(3), 282-290.

#' @references Piikki K., Wetterlind J., Soderstrom M., Stenberg B. (2021). Perspectives
#' on validation in digital soil mapping of continuous attributes. A review.
#' Soil Use and Management. \doi{10.1111/sum.12694}
#' 
#' @references  Wilks D. S. (2011) Statistical Methods in the Atmospheric 
#' Sciences, Academic  Press, Oxford, UK.

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' e(o=obs, p=pred)
#'
#' @export
e<-function(o, p){
  1 - (sse(o, p)/sst(o))
}


