#Construct A that contains the anount at the beginning of each month
annuity1 <- function(P, r, D, t) {
  A <- P
  for (i in seq(1, 12 * t)) {
    A[i + 1] <- A[i] * (1 + r / 12) + D
  }
  x <- seq(1,12*t)
  y <- A[x]
  plot(x,y, type = "l", main = "Annuity Plot", xlab = "Months", ylab = "Amount")
  return(A[12*t+1])
}
