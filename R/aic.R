#' @title aic

#' @description Calculates the Akaike information criterion (AIC) from observed
#' values, predicted values, the number of observations and the number of
#' model parameters.

#' @inherit mae return author 

#' @inheritParams mae

#' @param k A number. The number of parameters in the model. Note that k includes
#' the intercept, so for example, k is 2 for a linear regression model.

#' @return Akaike information criterion (AIC)

#' @details Interpretation: smaller is better. Akaike information criterion (AIC) punishes complexity of models;
#' a larger number of parameters (k) means a larger AIC value. As it is sensitive to the number of samples, AIC cannot easily be
#' compared between datasets of different sizes. 

#' @inherit mae return references 

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' aic(o=obs, p=pred, k=2)
#'
#' @export
aic<-function(o, p, k){
  length(o)*log(mse(o,p))+2*k
}

