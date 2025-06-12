library(bench)

# This function takes a vector n and squares each element and returns the resultant vector

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

f3 <- function(n) {
  if (identical(n, character(0))) {
    print('why did I start at zero?')
    } else {
      squares_sum <- 0
      for(i in 1:length(n)) {
      squares_sum <- squares_sum + n[i]^2
    }
  }
  squares_sum
}

n <- 1:10000

print('f1 vs f2')
mark(f1(n),f2(n))
print('f1 vs f3')
mark(f1(n),f3(n))
print('f2 vs f3')
mark(f2(n),f3(n))

