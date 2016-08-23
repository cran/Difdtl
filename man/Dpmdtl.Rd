\name{Dpmdtl}
\alias{Dpmdtl}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Return the result of difference of two precision matrices estimation by d-trace loss with lasso penalty.
}
\description{
Calculate the result of difference of two precision matrices estimation by d-trace loss with lasso penalty, given two sample classes.
}
\usage{
Dpmdtl(X1, X0, lambda = NULL, nlambda = 10, lambda.min.ratio = NULL, 
rho = NULL, shrink = NULL, prec = 0.001, correlation = FALSE, 
tuning = c("none", "aic", "bic", "nbic"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X1}{
A nXp matrix.
}
  \item{X0}{
A nXp matrix.
}
  \item{lambda}{
The tuning parameter of lasso penalty.
}
  \item{nlambda}{
The number of tuning parameter of lasso penalty for selection. 
}
  \item{lambda.min.ratio}{
%%     ~~Describe \code{lambda.min.ratio} here~~
}
  \item{rho}{
The parameter in augmented Lagrange method. The rho here equals the 2*rho in the reference paper.
}
  \item{shrink}{
%%     ~~Describe \code{shrink} here~~
}
  \item{prec}{
%%     ~~Describe \code{prec} here~~
}
  \item{correlation}{
%%     ~~Describe \code{correlation} here~~
}
  \item{tuning}{
The method used in the lambda selection. 
}
}
\value{

 \item{Dpmdtl}{The result of estimation by d-trace loss with lasso penalty.}
 \item{lambda}{The lambda used in the lasso penalty}
 \item{nlambda}{The number of lambda used in the lasso penalty}
 \item{opt}{Number of best lambda chosen by different matrix norms.}
 
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
##use of Dpmdtl
dpmdtl<- Dpmdtl(X1,Y1,nlambda=10,tuning="bic")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.


