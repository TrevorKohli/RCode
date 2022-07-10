Edge2Adj <- function(filename){
  E <- read.table(filename)
  RowE <- nrow(E)
  MaxE <- max(E)
  Adj.List <- list(NULL)
  Adj.List[MaxE + 1] <- NULL
  i <- 1
  while(i <= RowE){
    v.1 <- E[i,1]
    v.2 <- E[i,2]
    Adj.List[[v.1]] <- c(Adj.List[[v.1]],v.2)
    Adj.List[[v.2]] <- c(Adj.List[[v.2]],v.1)
    i <- i + 1
  }
  return(Adj.List)
}