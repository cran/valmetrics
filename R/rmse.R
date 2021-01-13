#' @title rmse

#' @description Calculates the Root mean square error (RMSE) from observed and
#' predicted values.

#' @inherit mae return author 

#' @inheritParams mae

#' @return Root mean square error (RMSE)
#'
#' @details Interpretation: smaller is better. RMSE is sometimes abbreviated RMS, RMSD
#' or RMSEP. A smaller value means a smaller error. RMSE is similar to mean
#' absolute error (MAE), median absolute deviation (MAD) and root median squared error (RmdSE) but is
#' more sensitive to large errors.

#' @inherit mae return references 

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' rmse(o=obs, p=pred)
#'
#' @export
rmse<-function(o, p){
  sqrt(mean((p-o)^2))
}












