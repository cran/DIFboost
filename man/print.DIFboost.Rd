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
Schauberger, Gunther and Tutz, Gerhard (2016): \emph{Detection of Differential Item Functioning in Rasch Models by Boosting Techniques}, British Journal of Mathematical and Statistical Psychology, 69(1), 80 - 103
}
\author{
Gunther Schauberger\cr
\email{gunther.schauberger@tum}\cr
\url{https://www.sg.tum.de/epidemiologie/team/schauberger/}
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