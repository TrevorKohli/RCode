loan.amortization.key

#Stack functions
#(1) Initialize stack - No input, return an empty stack
#Review:
My.List <- list()
#Length of list = 0 -- its an empty list
STACK <- list()

#(2) Is the stack empty?
#This function has input STACK and returns TRUE if STACK is empty, and returns 
#FALSE if STACK is nonempty
#If(length(STACK)==0) it is empty

#(3) push.stack - Inputs: STACK, thing
#Output - STACK with thing on top of it
#Return updated STACK (The top of the stack now has thing)
thing <- c(0,0,1)
STACK[[length(STACK) + 1]] <- thing

#(4) return top of STACK

#(5) Remove (pop) the last element from STACK
#Input: STACK 
#Return STACK with the last element removed 
#STACK <- STACK[-length(STACK)]

#Functions:
#initialize.stack
#is.empty.stack
#push.stack
#top.stack
#pop.stack
#top.stock and pop.stack should check to see whether STACK is empty 
#If it is, then you should print an error message and return NA