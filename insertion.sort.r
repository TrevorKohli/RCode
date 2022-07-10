insertion.sort <- function(L){
  N <- length(L)
  i <- 2
  if(is.null(L)){
    print("Cannot sort an empty vector")
    return(NA)
  }
  while(i <= N){
    x <- L[i]
    j <- i-1
    while(x < L[j] && j > 0) {
      L[j + 1] <- L[j]
      j <- j - 1
      
    }
    L[j+1] <- x
    i <- i + 1
  }
  return(L)
}