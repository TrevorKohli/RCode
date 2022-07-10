maze.solver <- function(Edg.list){
  A <- Edg.list
  Adj.List <- Edge2Adj(A)
  NumSq <- length(Adj.List)
  S <- initialize.stack()
  VISITED <- rep(FALSE,NumSq)
  S <- push.stack(S,1)
  i <- 1
  while(is.empty.stack(S) == FALSE){
    PATH <- top.stack(S)
    last.square <- PATH[length(PATH)]
    
    if(last.square == NumSq){
      return(PATH)
    }
    S <- pop.stack(S)
    i <- i + 1 
    j <- 1
    for (j in seq(1,length(Adj.List[[last.square]]))) {
      if(VISITED[Adj.List[[last.square]][j]] == FALSE){
        S <- push.stack(S, c(PATH, Adj.List[[last.square]][j]))
        VISITED[Adj.List[[last.square]][j]] <- TRUE
      }
    }
  }
  if(is.empty.stack(S) == TRUE){
    print("No path exists through this maze")
  }
}

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

initialize.stack <- function(){
  S <- list()
  return(S)
}

is.empty.stack <- function(S){
  i <- 0
  if(length(S) == 0){
    i <- TRUE
  }else{
    i <- FALSE
  }
  return(i)
}

push.stack <- function(S,thing){
  S[[length(S) + 1]] <- thing
  return(S)
}

top.stack <- function(S){
  if(is.empty.stack(S) == TRUE){
    print("Error, Stack is empty")
    return(NA)
  }
  x <- S[[length(S)]]
  return(x)
}

pop.stack <- function(S){
  if(is.empty.stack(S)){
    print("Error, Stack is empty")
    return(S)
  }
  S <- S[-length(S)]
  return(S)
}
