spinner <- function(P){
  x <- runif(1)
  L <- length(P)
  i <- 1
  K <- 0
  r <- P[i]
  for (j in seq(1,L)) {
    if(P[j] <= 0){
      print("All probabilities must be positive.")
      return(NA)
    }
    if(P[j] >= 1){
      print("All probabilities must be less than 1.")
      return(NA)
    }
  }
  if(sum(P) > 1 || sum(P) < 1){
    print("Sum of probabilities must equal 1.")
    return(NA)
  }
  while(i <= L && K == 0){
    if(x < r){
      K <- i
    }
    i <- i + 1
    r <- r + P[i]
  }
  return(K)
}