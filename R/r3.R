f1 <- function(n, threshold) {
  count <- 0
  for (i in 1:length(n)) {
    if (n[i] > threshold) {
      count <- count + 1
    }
  }
  count
}

set.seed(42)
n <- runif(100000, min = 0, max = 1000)
threshold <- 500

f1(n, threshold)
