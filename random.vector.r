##This function generates a random vector of length n + 1 that contains the 
#integers 1,2,...,N with only one integer repeating
random.vector <- function(N){
  x <- sample.int(N)
  i <- sample.int(N,1)
  k <- sample.int(N,1)
  if(k == 1){
    x <- c(i,x)
  }else{
  x <- c(x[seq(1,k-1)],i,x[seq(k,N)])
  }
  return(x)
}





