newton <- function(f,f.prime,A,t){
  B <- A + 1
  while (abs(B-A) > t && (2*(abs(B-A))/(abs(A)+abs(B))) > t){
    C <- A - (f(A)/f.prime(A))
    B <- A
    A <- C
  }
  return(C)
}