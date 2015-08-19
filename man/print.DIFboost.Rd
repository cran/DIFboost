\name{print.DIFboost}
\alias{print.DIFboost}

\title{
Print function for DIFboost
}
\description{
Prints the most important output of a DIFboost object. 
}
\usage{
\method{print}{DIFboost}(x, ...)
}

\arguments{
  \item{x}{DIFboost object, created by \code{\link{DIFboost}}
}
\item{...}{
Further arguments to be passed to the \code{\link[base:print]{print}} function.
}
}

\references{
Schauberger, Gunther and Tutz, Gerhard (2015): \emph{Detection of Differential Item Functioning in Rasch Models by Boosting Techniques}, British Journal of Mathematical and Statistical Psychology, published online
}
\author{
Gunther Schauberger\cr
\email{gunther@stat.uni-muenchen.de}\cr
\url{http://www.statistik.lmu.de/~schauberger/}
}

\seealso{
\code{\link{DIFboost}}
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