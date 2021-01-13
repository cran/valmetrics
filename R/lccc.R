#' @title lccc

#' @description Calculates Lin's concordance correlation coefficient (LCCC) from observed and
#' predicted values.

#' @inherit mae return author 

#' @inheritParams mae

#' @return Lin's concordance correlation coefficient (LCCC).

#' @details Interpretation: Lin's concordance correlation coefficient (LCCC) can take values
#' between -1 and 1. LCCC-values close to 1 indicate a strong concordance between
#' predicted and observed values, while LCCC-values near -1 indicate a strong
#' discordance. LCCC-values close to 0 indicate no concordance. In a plot of
#' predicted values versus observed values, an LCCC-value of 1 means that the
#' all data points are on the 1.1-line.

#' @references Lawrence, I., & Lin, K. (1989). A concordance correlation
#' coefficient to evaluate reproducibility. Biometrics, 255-268.

#' @references Piikki K., Wetterlind J., Soderstrom M., Stenberg B. (2021). Perspectives
#' on validation in digital soil mapping of continuous attributes. A review.
#' Soil Use and Management. \doi{10.1111/sum.12694}

#' @examples
#' obs<-c(1:10)
#' pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
#' lccc(o=obs, p=pred)
#'
#' @export
lccc<-function(o, p){
  r<-stats::cor(o,p)
  sdo<-stats::sd(o)
  sdp<-stats::sd(p)
  bias<-mean(o)-mean(p)
  a<-2*r*sdo*sdp
  b<-(sdo^2+sdp^2+bias^2)
  a/b
}

