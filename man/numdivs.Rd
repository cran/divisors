\name{numdivs}
\alias{numdivs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Number of divisors
}
\description{
Counted the number of divisors.
}
\usage{
numdivs(n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{a numeric or integer vector.
%%     ~~Describe \code{n} here~~
}
}
\details{
For n with length > 1, looping is performed in C, not in R. Speedup by
looping in C instead of R ~ 60x.
}
\value{
  a numeric vector of the same length as the input.
}

\author{
Greg Hirson <ghirson@ucdavis.edu>
}
\examples{
numdivs(2:5000)
}
