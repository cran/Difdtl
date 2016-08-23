\name{dpmdtl.ic}
\alias{dpmdtl.ic}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Return the best lambda number selected by AIC.
}
\description{
Return the best lambda number selected by AIC by different norms, given sample covariance matrices of two sample classes, estimation by different lambdas and the total number of samples.
}
\usage{
dpmdtl.ic(S1, S0, ret, n, penalty)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{S1}{
A pXp matrix. The sample covariance matrix of one sample class.
}
  \item{S0}{
A pXp matrix. The sample covariance matrix of one sample class.

}
  \item{ret}{
A list consist of pXp matrices.
}
  \item{n}{
The total number of samples.
}
  \item{penalty}{
The magnitude of penalty.
}
}
\value{
A vector of best lambda number chosen by different matrix norms.
}
\references{
Zhao,S., Cai,T.& Li,H.(2014) Direct estimation of differential networks. Biometrika 101, 253-268.
}
\examples{
##generate samples
library(MASS)
set.seed(1);
Sigma1 = genp(50,0.2,0.5)
set.seed(1);
Sigma2 = Sigma1+genp1(50,100,0.5)
tdelta = Sigma2-Sigma1
S1<-solve(Sigma1)
S0<-solve(Sigma2)
n<-200
p<-50
X1<-mvrnorm(n,rep(0,p),S1)
Y1<-mvrnorm(n,rep(0,p),S0)
dpmdtl<- Dpmdtl(X1,Y1,nlambda=10,tuning="none")
ret<-dpmdtl$Dpmdtl
##use of dpmdtl.ic
aic=dpmdtl.ic(S1,S0,ret,2*n,2)
}

