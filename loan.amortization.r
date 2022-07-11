loan.annuity <- function(P,r,C,t){
  i <- 1
  for (i in seq(1, 12 * t)) {
    P <- P * (1 + r / 12) - C
  }
  return(P)
}

loan.secant <- function(loan.annuity,P,r,A,B,t){
  i <- 1
  while(abs(B-A) > 0 && i < 100){
    C <- A-loan.annuity(P,r,A,t)*((B-A)/(loan.annuity(P,r,B,t)-loan.annuity(P,r,A,t)))
    A <- B
    B <- C
    i <- i + 1
  }
  return(C)
}

loan.amortization <- function(P,r,t){
  m <- t*12
  A <- P/m
  B <- 2*A
  PAYMENT <- loan.secant(loan.annuity,P,r,A,B,t)
  return(PAYMENT)
}