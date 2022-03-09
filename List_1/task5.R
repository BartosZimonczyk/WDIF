set.seed(42, kind="Mersenne-Twister")

X <- sample(-1000:1000, 2001)
new_X <- X[X >= cumsum(X)]
new_X_2 <- X[X >= cummax(X)]

plot(1:2001, X, ylim=c(min(cumsum(X)), max(cumsum(X))))
lines(1:2001, cumsum(X), col='blue')
lines(1:2001, cummax(X), col='red')
