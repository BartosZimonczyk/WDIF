set.seed(42, kind="Mersenne-Twister")

X <- rep(c(0,1,2,1,0,-1,-2,-1), length.out=1000)
cs_X <- cumsum(X)
sd(X)
sd(cs_X)
plot(1:160, X[1:160], col="red", type="l", ylim=c(-5, 5))
lines(1:160, cs_X[1:160], col="blue", type="l")

lines(1:160, rep(sd(X), 160), col="red", type="l", lty="dashed")
lines(1:160, -rep(sd(X), 160), col="red", type="l", lty="dashed")

lines(1:160, 2+rep(sd(cs_X), 160), col="blue", type="l", lty="dashed")
lines(1:160, 2-rep(sd(cs_X), 160), col="blue", type="l", lty="dashed")