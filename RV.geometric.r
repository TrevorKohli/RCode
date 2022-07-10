#Write a general r function that simulates the geometric random variable. 
RV.geometric <- function(p){
  N <- 1
  x <- runif(1)
  while(x > p){
   x <- runif(1) 
   N <- N + 1
  }
  return(N)
}