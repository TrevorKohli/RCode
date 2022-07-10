bisection <- function(f,A,B,t){
  if(f(A) >= 0 && f(B) >= 0 || f(A) < 0 && f(B) < 0){
    print("Error, f(A) and f(B) must have different signs.")
    return(NA)
  }
  C <- (A+B)/2
  while (abs(B-A) > t && (2*(abs(B-A))/(abs(A)+abs(B))) > t) {
    if(f(A) >= 0 && f(C) >= 0 || f(A) < 0 && f(C) < 0){
      A <- C
    }else{
      B <- C
    }
    C <- (A+B)/2
  }
return(C)
}