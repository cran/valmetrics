% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smape.R
\name{smape}
\alias{smape}
\title{smape}
\usage{
smape(o, p)
}
\arguments{
\item{o}{A numeric vector. Observed values.}

\item{p}{A numeric vector. Predicted values.}
}
\value{
Symmetrical mean percentage error (SMAPE)
}
\description{
Calculates the Symmetrical mean percentage error (SMAPE) from observed
and predicted values.
}
\details{
Interpretation: smaller is better.
}
\examples{
obs<-c(1:10)
pred<-c(1, 1 ,3, 2, 4, 5, 6, 8, 7, 10)
smape(o=obs, p=pred)

}
\references{
Forkuor G., Hounkpatin O. K., Welp G., Thiel, M. 2017. High 
resolution mapping of soil properties using remote sensing variables in 
south-western Burkina Faso: a comparison of machine learning and multiple 
linear regression models. PloS one, 12(1), e0170478.

Piikki K., Wetterlind J., Soderstrom M., Stenberg B. (2021). Perspectives
on validation in digital soil mapping of continuous attributes. A review.
Soil Use and Management. \doi{10.1111/sum.12694}
}
\author{
Kristin Piikki, Johanna Wetterlind, Mats Soderstrom and Bo Stenberg, 
E-mail: \email{kristin.piikki@slu.se}
}
