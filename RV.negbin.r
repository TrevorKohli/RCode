RV.negbin <- function(p,R){
  n <- 0
  i <- 0
  if(p <= 0 || p >= 1){
    print("Error, p must be in the interval (0,1)")
    return(NA)
  }
  if(R %% 2 != 0 && R %% 2 != 1){
    print("Error, R must be a natural number")
    return(NA)
  }
  while(n < R){
    x <- runif(1)
    if(x <= p){
      n <- n + 1
    }
    i <- i + 1
  }
  return(i)
}