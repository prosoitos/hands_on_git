f1 <- function(n) {
  squares_sum <- 0
  for(i in 1:length(n)) {
    squares_sum <- squares_sum + n[i]^2
  }
  squares_sum
}

n <- 1:10000

f1(n)


f2 <- function(n) {
  cum_sum <- numeric(0)
  for (i in 1:length(n)) {
    cum_sum <- c(cum_sum, sum(n[1:i]))
  }
  cum_sum
}

n <- 1:10000

f2(n)
