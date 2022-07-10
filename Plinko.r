#Input: N - number of steps
#Return: Final value
#Plot the state of game at each step

plinko <- function(N) {
  x <- 0
  i <- 0
  for (i in seq(1,N)) {
    y <- runif(1)
    if (y > 0.5) {
      x <- x + 1
    } else{
      x <- x - 1
    }
    print(x)
  }
}

