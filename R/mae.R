#' @title mae

#' @description Calculates the Mean absolute error (MAE) from observed and
#' predicted values.

#' @author Kristin Piikki, Johanna Wetterlind, Mats Soderstrom and Bo Stenberg, 
#' E-mail: \email{kristin.piikki@@slu.se} 

#' @param o A numeric vector. Observed values.
#'
#' @param p A numeric vector. Predicted values.

#' @return Mean absolute error (MAE).
#'
#' @details Interpretation: smaller is better. Similar to RMSE but less sensitive
#' to large errors.

#' @references Piikki K., Wetterlind J., Soderstrom M., Stenberg B. (2021). Perspectives
#' on validation in digital soil mapping of continuous attributes. A review.
#' Soil Use and Management. \doi{10.1111/sum.12694}

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' mae(o=obs, p=pred)
#'
#' @export
mae<-function(o, p) return(mean(abs(o-p)))












