RV.binomial <- function(n,p){
  x <- runif(1)
  i <- 1 
  c <- 0
  if(n <= 0){
    print("Error, n must be a positive integer.")
    return(NA)
  }
  if(n %% 1 != 0){
    print("Error, n must be a positive integer.")
    return(NA)
  }
  if(p <= 0 || p >= 1){
    print("Error, p must be strictly between 0 and 1")
    return(NA)
  }
  for (i in seq(1,n)) {
    if(x <= p){
      c <- c +1
    }
    x <- runif(1)
  }
  return(c)
}