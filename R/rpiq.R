#' @title rpiq

#' @description Calculates the Ratio of interquartile to RMSE (RPIQ) from observed
#'and predicted values.

#' @author Kristin Piikki, Johanna Wetterlind, Mats Soderstrom & Bo Stenberg
#' \email{kristin.piikki@slu.se}

#' @inheritParams mae

#' @return Ratio of interquartile to RMSE (RPIQ)

#' @details Interpretation: Smaller is better.

#' @references Bellon-Maurel V., Fernandez-Ahumada E., Palagos B., Roger J. M., 
#' McBratney, A. 2010. Critical review of chemometric indicators commonly used
#' for assessing the quality of the prediction of soil attributes by NIR 
#' spectroscopy. TrAC Trends in Analytical Chemistry, 29(9), 1073-1081.

#' @references Piikki K., Wetterlind J., Soderstrom M. Stenberg B. Perspectives
#' on validation in digital soil mapping of continuous attributes. A review.
#' Soil Use and Management, in press.

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' rpiq(o=obs, p=pred)
#'
#' @export
rpiq<-function(o, p){
  iqr(o)/rmse(o,p)
}
