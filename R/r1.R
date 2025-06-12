f1 <- function(n) {
  squares_sum <- 0
  for(i in 1:length(n)) {
    squares_sum <- squares_sum + n[i]^2
  }
  squares_sum
}


f2 <- function(n) {
  sum(n^2)
}
n <- 1:10000
f1(n)
f2(n)
