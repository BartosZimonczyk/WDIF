set.seed(42, kind="Mersenne-Twister")

dis <- function(c, t){c * exp(-0.05*t)}

v1 <- rexp(1000, 1/5)
v2 <- runif(1000, 0, 20)

plot(v2, v1)
sum(dis(v1, v2))
1000 * 5 * exp(-1/2)

temp_sum <- c()
for(i in 1:10000){
    temp_sum[i] <- sum(dis(v1, v2))
}

mean(temp_sum)
1000 * 5 * exp(-1/2)
