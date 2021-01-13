#' @title nrmse

#' @description Calculates the Normalised RMSE (NRMSE) from observed
#'and predicted values.

#' @inherit mae return author

#' @inheritParams mae

#' @return Normalised RMSE (NRMSE)

#' @details Interpretation: smaller is better. Normalised RMSE (NRMSE) is computed as the RMSE divided by the mean
#' of the observed valeus. NRMSE is sometimes called Relative RMSE (rRMSE) or
#' Root mean square standardized (RMSS).

#' @inherit mae return references

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' nrmse(o=obs, p=pred)
#'
#' @export
nrmse<-function(o, p){
  rmse(o,p)/mean(o)
}
