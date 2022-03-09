set.seed(42, kind="Mersenne-Twister")

the_matrix <- matrix(rnorm(500*252, 0.2, 0.3),
                     nrow = 500,
                     ncol = 252)
the_sums <- apply(the_matrix, 2, cumsum)
matplot(the_sums)

the_matrix <- matrix(rnorm(500*252, 0, 0.3),
                     nrow = 500,
                     ncol = 252)
the_sums <- apply(the_matrix, 2, cumsum)
matplot(the_sums)