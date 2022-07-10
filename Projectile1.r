#This program works to find the max height, velocity, and time an object is in the air

h0 <- as.numeric(readline("Please enter the initial height of the object "))
v0 <- as.numeric(readline("Please enter the initial velocity of the object "))
g <- (-9.80655)
if(v0 > 0){
 tmax <- -(v0)/(g) 
}else{
  tmax <- 0
}
hmax <- (g/2)*(tmax)^2 + v0*tmax + h0
x <- (-(v0) +- sqrt(v0^2-4*(g/2)*h0))/(g)
if(x > 0){
  t <- x
}else{
  DNE <- x
}
v <- g*t + v0
y <- seq(0,t,t/256)
h <- (g/2)*(y)^2 + v0*y + h0
cat("The maximum height of the object is ", hmax, " meters.\n")
cat("The object is in the air ", t, " seconds.\n")
cat("The velocity of the object when it hits the ground is ", v, " meters/second.\n")
plot(y,h, type = "l", main = "Motion of Projectile Neglecting Air Resistance", 
     xlab = "Time (sec)", ylab = "Height (meters)")