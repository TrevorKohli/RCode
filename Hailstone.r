hailstone <- function(N){
  x <- 0
  i <- 1
  x[i] <- N
  if(N <= 0 || ((N %% 2 != 0) && (N %% 2 != 1))){
    print("Error, N must be a natural number")
    return(NA)
  }
  while (x[i] > 1) {
    if ((x[i] %% 2) == 1) {
      x[i + 1] <- x[i]*3+1
      i <- i +1
    }else{
      x[i + 1] <- x[i]/2
      i <- i + 1
    }
  }
  y <- seq(1,i)
  A <- x[y]
  if(i == 1){
    plot(y,A, main = "Hailstone Sequence", xlab = "Iteration Number",
         ylab = "Value of F", col = "red")
  }else{
  plot(y,A, type = "l", main = "Hailstone Sequence", xlab = "Iteration Number",
       ylab = "Value of F", col = "blue")
  }
  return(x)
}