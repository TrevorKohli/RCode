Edge2Adj <- function(filename)
  E <- read.table("EdgeList01.txt")
  #max(E) tells number of vertices (number of squares)
  #nrow(E) tells the number of rows in matrix (edges)
  #Initialize list
  L <- list(NULL)
  L[max(E) + 1] <- NULL
  
  ADJ.LIST <- Edge2Adj("Maze006by006EdgeList.txt")
  #notes for maze solver 
  #Input: Name of file that contains the edge list of the maze
  #maze.solver <- function(name of file)
  #Using the Adj2Edge.R helper function change the edge list into an adjacency list
  #Initialize STACK
  #Initialize VISITED vector
  #STACK <- initialize.stack()
  #nSquares <- Length(ADJ.LIST)
  #VISITED <- rep(FALSE,nSquares)
  #Using the push.stack helper function, push 1 onto STACK 
  #Mark 1 as visited
  #VISITED[1] <- T
  #STACK <- push.stack(STACK,1)
  #While STACK is not empty:
  #Pop PATH from STACK
  #PATH <- top.stack(STACK)
  #STACK <- pop.stack(STACK)
  #STACK <- push.stack(STACK, c(PATH, ADJ.LIST[[1]][1]))
  #STACK <- push.stack(STACK, c(PATH, ADJ.LIST[[1]][2]))
  
  #If the last square in PATH is the destination square, return(PATH)
  #See what squares are adjacent to the last square in PATH, and append PATH with 
  #each of those squares --one at a time and push each of the appended paths
  #onto STACK, and mark each new square as visited. 
  #VISITED[2] <- T
  #VISITED[7] <- T
  #PATH <- top.stack(STACK)
  #STACK <- pop.stack(STACK)
  #last.square <- PATH[length(PATH)]
  #ADJ.LIST[[last.square]]
  #PATH <- top.stack(STACK)
  #STACK <- pop.stack(STACK)
  #last.square <- PATH[length(PATH)]
  #ADJ.LIST[last.square]
  