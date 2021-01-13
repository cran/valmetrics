#' @title smape

#' @description Calculates the Symmetrical mean percentage error (SMAPE) from observed
#' and predicted values.

#' @inherit mae return author

#' @inheritParams mae

#' @return Symmetrical mean percentage error (SMAPE)

#' @details Interpretation: smaller is better.

#' @references Forkuor G., Hounkpatin O. K., Welp G., Thiel, M. 2017. High 
#' resolution mapping of soil properties using remote sensing variables in 
#' south-western Burkina Faso: a comparison of machine learning and multiple 
#' linear regression models. PloS one, 12(1), e0170478.

#' @references Piikki K., Wetterlind J., Soderstrom M., Stenberg B. (2021). Perspectives
#' on validation in digital soil mapping of continuous attributes. A review.
#' Soil Use and Management. \doi{10.1111/sum.12694}

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' smape(o=obs, p=pred)
#'
#' @export
smape<-function(o, p){
  a<-abs(o-p)
  b<-o+p
  mean(2*a/b)
}
