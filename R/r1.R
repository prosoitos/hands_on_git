library(bench)

f1 <- function(n) {
  squares_sum <- 0
  for(i in 1:length(n)) {
    squares_sum <- squares_sum + n[i]^2
  }
  squares_sum
}

n <- 1:10000

mark(f1(n))


f2 <- function(n) {
  squares <- n^2
  squares_sum <- sum(squares)
  squares_sum
}

mark(f2(n))


