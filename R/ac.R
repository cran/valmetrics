#' @title ac

#' @description Calculates the Agreement coefficient (AC) from observed and
#' predicted values.

#' @inherit mae return author 

#' @inheritParams mae

#' @return Agreement coefficient (AC).

#' @details Interpretation: larger is better.

#' @inherit mae return references 
#' 
#' @references Piikki K., Wetterlind J., Soderstrom M., Stenberg B. (2021). Perspectives
#' on validation in digital soil mapping of continuous attributes. A review.
#' Soil Use and Management. \doi{10.1111/sum.12694}
#' 
#' @references Willmott, C. J. (1984). On the evaluation of model performance in
#' physical geography. In Spatial statistics and models. Springer, Dordrecht,
#' Netherlands.

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' ac(o=obs, p=pred)

#' @export
ac<-function(o, p){
  a<-abs(p-mean(o))
  b<-abs(o-mean(o))
  1-(sse(o,p)/sum(a+b))
}


