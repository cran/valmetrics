#' @title adjr2

#' @description Calculates the Adjusted R2 (adjr2) from observed
#' values, predicted values and the number of model parameters.

#' @inherit mae return author 

#' @inheritParams mae

#' @param k A number. The number of parameters in the model. Note that k includes
#' the intercept, so for example, k is 2 for a linear regression model.

#' @return Adjusted R2 (adjr2)

#' @details Interpretation: larger is better. Adjusted R2 (adjr2) punishes complexity of models;
#' a larger number of parameters (k) means a smaller adjr2 value.

#' @inherit mae return references

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' adjr2(o=obs, p=pred, k=2)
#'
#' @export
adjr2<-function(o, p, k){
  n<-length(o)
  1 - (n-1)/(n-k)*(sse(o, p)/sst(o))
}
