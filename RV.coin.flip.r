#This script file simulates a coin flip
#It flips the coin until HEADS comes up
#Then, it prints the number of times the coin had to be flipped

flips <- 1
x <- runif(1)
while(x >= .5){
  flips <- flips + 1 
  x <- runif(1)
}
cat("The number of flips is",flips,".\n")
