\name{DIFboost-package}
\alias{DIFboost-package}
\docType{package}
\title{
DIFboost
}
\description{
A package to perform DIFboost, a method to detect DIF (Differential Item Functioning) in Rasch Models. It can handle settings with many covariates and also metric covariates simultaneously. The method is described in Tutz and Schauberger (2015). Model/variable selection is performed using stability selection. 
}
\details{
The method assumes the DIFmodel from Tutz and Schauberger (2015) where boosting is used for DIF detection. Computation is based on the functions \code{\link[mboost]{gamboost}} and \code{\link[mboost]{stabsel}}.  
}
\author{
Gunther Schauberger\cr
\email{gunther.schauberger@tum}\cr
\url{https://www.sg.tum.de/epidemiologie/team/schauberger/}
}
\references{
Schauberger, Gunther and Tutz, Gerhard (2016): \emph{Detection of Differential Item Functioning in Rasch Models by Boosting Techniques}, British Journal of Mathematical and Statistical Psychology, 69(1), 80 - 103
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