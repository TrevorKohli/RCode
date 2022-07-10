maze.shortest.path <- function(Edg.list, EnSq, ExSq){
  A <- Edg.list
  Adj.List <- Edge2Adj(A)
  NumSq <- length(Adj.List)
  Q <- initialize.queue()
  VISITED <- rep(FALSE,NumSq)
  Q <- enqueue(Q,EnSq)
  while (is.empty.queue(Q) == FALSE) {
    PATH <- first.in.queue(Q)
    Q <- dequeue(Q)
    last.square <- PATH[length(PATH)]
    j <- 1
    for (j in seq(1,length(Adj.List[[last.square]]))){
      if(VISITED[Adj.List[[last.square]][j]] == FALSE){
        if(sum(Adj.List[[last.square]][j] == ExSq) > 0){
          PATH[length(PATH) + 1] <- Adj.List[[last.square]][j]
          return(PATH)
        }else{
          Q <- enqueue(Q, c(PATH, Adj.List[[last.square]][j]))
          VISITED[Adj.List[[last.square]][j]] <- TRUE
        }
      }
    }
  }
  if(is.empty.queue(Q) == TRUE){
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

initialize.queue <- function(){
  Q <- list()
  return(Q)
}

is.empty.queue <- function(Q){
  i <- 0
  if(length(Q) == 0){
    i <- TRUE
  }else{
    i <- FALSE
  }
  return(i)
}

enqueue <- function(Q,thing){
  Q[[length(Q) + 1]] <- thing
  return(Q)
}

first.in.queue <- function(Q){
  if(is.empty.queue(Q) == TRUE){
    print("Error, QUEUE is empty")
    return(NA)
  }
  x <- Q[[1]]
  return(x)
}

dequeue <- function(Q){
  if(is.empty.queue(Q)){
    print("Error, QUEUE is empty")
    return(Q)
  }
  Q <- Q[-1]
  return(Q)
}