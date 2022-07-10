Banach <- function(N,V){
  LN <- N
  RN <- N
  i <- 1
  x <- V[i]
  while(LN > 0 && RN > 0){
    if(x < .5){
      LN <- LN - 1
    }
    if(x >= .5){
      RN <- RN - 1
    }
    i <- i + 1
    x <- V[i]
  }
  if(LN == 0){
    m <- RN
  }
  if(RN == 0){
    m <- LN
  }
  return(m)
}