\name{Difdtl-package}
\alias{Difdtl-package}
\alias{Difdtl}
\docType{package}
\title{
Difference of Two Precision Matrices Estimation}
\description{
Difference of two precision matrices is estimated by the d-trace loss with lasso penalty, given two sample classes.}
\details{
\tabular{ll}{
Package: \tab Dpmdtl\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2016-04-26\cr
License: \tab GPL(>=2)\cr
}
}
\author{
Huili Yuan

Maintainer: Huili Yuan<hlyuan0116@sina.com>
}
\references{
Huili Yuan, Ruibin Xi and Minghua Deng(2015). Differential Network Analysis via the Lasso Penalized D-Trace Loss. http://arxiv.org/abs/1511.09188
}

\keyword{ package }

\examples{
##generate samples
library(MASS)
set.seed(1);
Sigma1 = genp(50,0.2,0.5)
set.seed(1);
Sigma2 = Sigma1+genp1(50,100,0.5)
tdelta = Sigma2-Sigma1
SigmaX<-solve(Sigma1)
SigmaY<-solve(Sigma2)
n<-200
p<-50
X1<-mvrnorm(n,rep(0,p),SigmaX)
Y1<-mvrnorm(n,rep(0,p),SigmaY)
##use of Dpmdtl
dpmdtl<- Dpmdtl(X1,Y1,nlambda=10,tuning="bic")
}

