\name{L1_dts}
\alias{L1_dts}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The algorithm used to calculate the difference of two precision matrices estimation.
}
\description{
Calculate the difference of two precision matrices estimation, given the sample covariance matrices of two sample classes.
}
\usage{
L1_dts(SigmaX, SigmaY, rho, lambda)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{SigmaX}{
A pXp matrix.
}
  \item{SigmaY}{
A pXp matrix.
}
  \item{rho}{
The parameter used in augmented Lagrange method.
}
  \item{lambda}{
The tuning parameter of lasso penalty.
}
}
\value{
A symmetric pXp matrix.
}
\references{
Huili Yuan, Ruibin Xi and Minghua Deng(2015). Differential Network Analysis via the Lasso Penalized D-Trace Loss. http://arxiv.org/abs/1511.09188
}
\author{
Huili Yuan
}
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
##use of L1_dts
dtsmatrix<-L1_dts(SigmaX, SigmaY,1,0.5)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
