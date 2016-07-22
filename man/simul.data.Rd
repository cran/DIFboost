\name{simul.data}
\alias{simul.data}
\docType{data}
\title{
Simulated data set
}
\description{
Simulated data set with 100 persons, 10 items and 3 (standardized) covariates. Items 1, 2 and 3 are DIF items.}
\usage{data(simul.data)}
\format{
  \describe{
    \item{\code{Item1}}{Item 1, DIF item}
    \item{\code{Item2}}{Item 2, DIF item}
    \item{\code{Item3}}{Item 3, DIF item}
    \item{\code{Item4}}{Item 4, non-DIF item}
    \item{\code{Item5}}{Item 5, non-DIF item}
    \item{\code{Item6}}{Item 6, non-DIF item}
    \item{\code{Item7}}{Item 7, non-DIF item}
    \item{\code{Item8}}{Item 8, non-DIF item}
    \item{\code{Item9}}{Item 9, non-DIF item}
    \item{\code{Item10}}{Item 10, non-DIF item}                                
    \item{\code{CovBin1}}{Binary covariate (standardized)}
    \item{\code{CovBin2}}{Binary covariate (standardized)}
    \item{\code{CovMet}}{Metric covariate (standardized)}        
  }
}
\references{
Schauberger, Gunther and Tutz, Gerhard (2016): \emph{Detection of Differential Item Functioning in Rasch Models by Boosting Techniques}, British Journal of Mathematical and Statistical Psychology, 69(1), 80 - 103
}
\author{
Gunther Schauberger\cr
\email{gunther@stat.uni-muenchen.de}\cr
\url{http://www.statistik.lmu.de/~schauberger/}
}

\seealso{
\code{\link{DIFboost}}, \code{\link{print.DIFboost}}
}
\examples{
\dontrun{
data(simul.data)

Y <- simul.data[,1:10]
X <- simul.data[,11:13]

m1 <- DIFboost(Y = Y, X = X) 
print(m1)
}
}