\name{divisors}
\alias{divisors}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Find all divisors of a number
}
\description{
This function finds and counts the number of divisors for number.
}
\usage{
divisors(n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
An integer. If you give don't give it an integer, it will be cast to an
integer.
}
}
\details{
The upper limit of the value of n is the upper limit for the value of
an int in C, \deqn{2^{31}-1}{2^{31}-1}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{num}{The number of divisors}
\item{divs}{The divisors}
%% ...
}

\author{
Greg Hirson <ghirson@ucdavis.edu>
}

\examples{
divisors(10001)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.