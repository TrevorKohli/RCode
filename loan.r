loan <- function(amnt, rate, payment){
  i <- 0
  amnt1 <- amnt*(1 + rate/12) - payment
  if(amnt1 > amnt){
    return(NA)
  }
  while (amnt > 0) {
    amnt <- amnt*(1 + rate/12) - payment
    i <- i + 1
  }
  return(i)
}