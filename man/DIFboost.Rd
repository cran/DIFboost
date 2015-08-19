\name{DIFboost}
\alias{DIFboost}

\title{
Detection of Differential Item Functioning (DIF) in Rasch Models by Boosting Techniques
}
\description{
A function to perform DIFboost, a method to detect DIF (Differential Item Functioning) in Rasch Models. It can handle settings with many covariates and also metric covariates simultaneously. The method is described in Tutz and Schauberger (2015). Model/variable selection is performed using stability selection. 
}
\usage{
DIFboost(Y, X, mstop = 400, trace = TRUE, cutoff = 0.9, 
         B = 500, mc.cores = 1, q = 0.6 * I)
}

\arguments{
  \item{Y}{
Data frame (one row per person, one column per item) containing response. May only contain 0 or 1.
}
  \item{X}{
Data frame (one row per person, one column per covariate) containing covariates. Has to be standardized. 
}
  \item{mstop}{
Number of boosting iterations maximally performed in one iteration of the stability selection.
}
  \item{trace}{
Should the trace of the single boosting steps be printed?
}
  \item{cutoff}{
Cutoff value for stability selection. 
}
  \item{B}{
Number of subsamples used for stability selection.
}
  \item{mc.cores}{
Number of cores for parallelized stability selection. For windows machines, parallelization is not possible. 
}
  \item{q}{
Maximum number of base learner to be included in the boosting algorithm for one subsample in stability selection. By default set to 60 percent of the total number of items. 
}
}
\details{
The method assumes the DIFmodel from Tutz and Schauberger (2015) where boosting is used for DIF detection. Computation is based on the functions \code{\link[mboost]{gamboost}} and \code{\link[mboost]{stabsel}}.  
}

\value{
\item{model}{Model from inital gamboost fit}
\item{dif.mat}{Estimates of the item-specific parameter estimates, with zeros for non-DIF items}
\item{coefficients}{coefficient vector with all estimates from refitted model}
\item{theta}{Estimated person abilities}
\item{beta}{Estimated item difficulties}
\item{gamma}{Estimated item-specific parameters}
\item{P}{Number of (valid) persons}
\item{I}{Number of items}
\item{names.y}{Names of the items}
\item{names.x}{Names of the covariates}
\item{design.matrix}{Design matrix for refitted model}
\item{PFER}{upper bound for the per-family error rate. For details see \code{\link[mboost]{stabsel}}.}
\item{lin.pred}{linear predictor from refitted model}
\item{DIF.items}{Which items have been detected to be DIF items?}
\item{ref.item}{Reference item}
\item{phat}{selection probabilities for single base learners in stability selection. For details see \code{\link[mboost]{stabsel}}}
\item{cutoff}{cutoff value used for stability selection}
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
\code{\link{print.DIFboost}}, \code{\link[mboost]{gamboost}}, \code{\link[mboost]{stabsel}}
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
\keyword{DIFboost}