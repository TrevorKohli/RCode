RV.hypergeometric <- function(RED,BLUE,N){
  Gum <- RED + BLUE
  i <- 0
  S <- 0
  x <- runif(1)
  if(N > Gum){
    print("Error, number of draws must be less than or equal to the total number of gum balls.")
    return(NA)
  }
  while (i < N) {
    p <- RED/Gum
    if(x < p){
      S <- S + 1
      RED <- RED - 1
    }
    Gum <- Gum - 1
    i <- i + 1
    x <- runif(1)
  }
  return(S)
}