\name{genp1}
\alias{genp1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate difference of two precision matrices.
}
\description{
Generate difference of two precision matrices with certain number of non-zero elements.
}
\usage{
genp1(p, n, sigma)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
The dim of the matrix.
}
  \item{n}{
The non-zero element in the matrix.
}
  \item{sigma}{
The parameter used to describe the magnitude of the non-zero element.
}
}
\value{
A symmetric pXp matrix.
}
\examples{
set.seed(1)
diffmatrix<-genp1(50,100,0.5)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

