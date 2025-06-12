f1 <- function(n) {
  squares_sum <- 0
  for(i in 1:length(n)) {
    squares_sum <- squares_sum + n[i]^2
  }
  squares_sum
}

###test function 2

f2<-function (n){
  sum(n^2)
}

#bench marking
library(bench)
n<-100
print(mark(f1(n),f2(n)))
