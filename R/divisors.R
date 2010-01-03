divisors <-
  #a function to compute the divisors of a number
  function(n){

    if(n <0)
      stop("n must be positive")
    if(n > 2^32 - 1)
      stop("n is too large. n must be smaller than 2^32-1")

    if(n < 2)
      return(list(num=1, divs = 1))
      
    
    numD = .C("numdivs", n = as.integer(n), out = integer(length=1))$out
    divs = .C("divisors", n = as.integer(n), ln = as.integer(numD),
      out = double(length = 1),
      divs = double(length = numD))

    

    #duplicates only happen on perfect squares,
    #divs wrong - take unique, numD decrement one

    if(n %in% (divs$divs)^2){
      divs$divs = unique(divs$divs)
      numD = numD - 1
    }
    
      
    
    return(list(num = numD, divs = divs$divs))
  }


numdivs <-
  # just number of divisors, vectorized in C
  function(n){
    if(length(n) == 1L){
      numD = .C(name="numdivs", n = as.integer(n),
        out = integer(length=1))$out
    }
    else{
      numD = .C(name = "vecnumdivs", n = as.integer(n),
        na = as.integer(length(n)),
        out = vector("integer", length=length(n)))$out
    }

    #still checking for double number in R.
    numD = ifelse(floor(sqrt(n)) == sqrt(n), numD - 1, numD)
    numD}
