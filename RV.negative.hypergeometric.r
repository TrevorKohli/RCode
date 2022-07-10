RV.negative.hypergeometric <- function(N,M,K){
   x <- runif(1)
   n <- 0
   i <- 0
   if(N <= 0 || M <= 0 || K <= 0){
     print("Error. The input arguments N, M, and K must be nonnegative integers.")
     return(NA)
   }
   if(N %% 1 != 0 || M %% 1 != 0 || K %% 1 != 0){
     print("Error. The input arguments N, M, and K must be nonnegative integers.")
     return(NA)
   }
   if(M > N){
     print("Error. The input argument N must be greater than or equal to M.")
     return(NA)
   }
   if(K > M){
     print("Error. The input argument M must be greater than or equal to K.")
     return(NA)
   }
   while(n < K){
     p <- M/N
     if(x < p){
       n <- n + 1
       M <- M - 1
     }
     x <- runif(1)
     N <- N - 1
     i <- i + 1
   }
   return(i)
}