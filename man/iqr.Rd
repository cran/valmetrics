% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iqr.R
\name{iqr}
\alias{iqr}
\title{iqr}
\usage{
iqr(o)
}
\arguments{
\item{o}{A numeric vector. Observed values.}
}
\value{
Inter-quartile range (IQR).
}
\description{
Calculates the Inter-quartile range (IQR) from a vector of
observed values.
}
\details{
The inter-quartile range (IQR) is the difference between the
75-percentile and the 25-percentile of the observed values.
}
\examples{
obs<-c(1:10)
iqr(o=obs)
}
\author{
Kristin Piikki, Johanna Wetterlind, Mats Soderstrom and Bo Stenberg, 
E-mail: \email{kristin.piikki@slu.se}
}
