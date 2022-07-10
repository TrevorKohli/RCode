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
  