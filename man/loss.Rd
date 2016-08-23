\name{loss}
\alias{loss}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the loss function value for the estimation.
}
\description{
Calculate the loss function value for the estimation, given the estimation of two precision matrices and the sample covariance matrices of two sample classes.
}
\usage{
loss(D, S1, S0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{D}{
The difference of two precision matrics estimation.
}
  \item{S1}{
The sample covariance matrix for one sample class.
}
  \item{S0}{
The sample covariance matrix for one sample class.
}
}
\value{
A vector of loss function value by different matrix norms.
}
\references{
Huili Yuan, Ruibin Xi and Minghua Deng(2015). Differential Network Analysis via the Lasso Penalized D-Trace Loss. http://arxiv.org/abs/1511.09188
}
\author{
Huili Yuan
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.


