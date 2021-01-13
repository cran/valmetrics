#' @title msdr

#' @description Calculates the Mean squared deviation ratio (msdr) from observed
#'and predicted values.

#' @inherit mae return author

#' @inheritParams mae

#' @return  Mean squared deviation ratio (msdr)

#' @details Interpretation: closer to 1 is better. Sometimes called standardised
#' squared predictor error (SSPE) or scaled root mean squared error (SRMSE).

#' @references Piikki K., Wetterlind J., Soderstrom M., Stenberg B. (2021). Perspectives
#' on validation in digital soil mapping of continuous attributes. A review.
#' Soil Use and Management. \doi{10.1111/sum.12694}

#' @references Voltz, M., & Webster, R. (1990). A comparison of kriging, cubic 
#' splines and classification for predicting soil properties from sample 
#' information. Journal of soil Science, 41(3), 473-490. (there called: 
#' standardized square deviation).

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' msdr(o=obs, p=pred)
#'
#' @export
msdr<-function(o, p){
  mse(o,p)/stats::var(p)
}

