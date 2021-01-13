#' @title lc

#' @description Calculates the Lack of correlation (LC) from observed
#'and predicted values.

#' @inherit mae return author 

#' @inheritParams mae

#' @return Lack of correlation (LC)

#' @details Interpretation: smaller is better.

#' @references Gauch H. G., Hwang J. G., & Fick G. W. 2003. Model evaluation 
#' by comparison of model based predictions and measured values. Agronomy Journal, 
#' 95(6), 1442-1446.

#' @references Piikki K., Wetterlind J., Soderstrom M., Stenberg B. (2021). Perspectives
#' on validation in digital soil mapping of continuous attributes. A review.
#' Soil Use and Management. \doi{10.1111/sum.12694}

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' lc(o=obs, p=pred)
#'
#' @export
lc<-function(o, p){
  (1-r2(o,p))*sum((p^2)/length(p))
}
