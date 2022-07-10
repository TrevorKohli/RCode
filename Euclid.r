euclid <- function(a,b){
  r <- a %% b
  q <- a %/% b
  P <- c(0,0,0)
  m1 <- 1
  m2 <- 0
  n1 <- 0
  n2 <- 1
  while(r > 0){
    m3 <- m1-q*m2
    n3 <- n1-q*n2
    n1 <- n2
    n2 <- n3
    m1 <- m2
    m2 <- m3
    a <- b
    b <- r
    r <- a %% b
    q <- a %/% b
  }
  P[1] <- b
  P[2] <- m2
  P[3] <- n2
  return(P)
}