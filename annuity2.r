#Write a function called annuity2.r that calculates the number of months 
#required until a certain value is reached

annuity2 <- function(GOAL, Rate, Initial.Deposit, Monthly.Deposit){
  A <- 0
  i <- 1
  A[i] <- Initial.Deposit
  while (A[i] < GOAL) {
    A[i+1] <- A[i]*(1 + Rate/12) + Monthly.Deposit
    i <- i + 1
  }
  return(i-1)
}