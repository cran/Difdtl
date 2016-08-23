\name{genp}
\alias{genp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate one precision matrix.
}
\description{
Generate one precision matrix with certain sparse degree.
}
\usage{
genp(p, sparsity, sigma)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
The dim of the matrix.
}
  \item{sparsity}{
The sparse degree. 
}
  \item{sigma}{
The parameter used to describe the magnitude of the non-zero element.
}
}
\value{
A symetric positive definite pXp matrix.
}
\examples{
set.seed(1)
sparsematrix<-genp(50,0.05,0.5)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
