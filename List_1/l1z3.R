set.seed(42, kind="Mersenne-Twister")


p <- 0.5
steps <- sample(c(1, -1), 1000, replace = T, prob=c(p, 1-p))
walk <- cumsum(steps)
walk_min <- cummin(walk)
walk_max <- cummax(walk)

plot(1:1000, walk, type='l')
lines(1:1000, walk_min, col="blue", type='l')
lines(1:1000, walk_max, col="red", type='l')

# how many times did it cross 0?
sum(walk == 0)
which(walk == 0)

p <- 0.4
steps <- sample(c(1, -1), 1000, replace = T, prob=c(p, 1-p))
walk <- cumsum(steps)
walk_min <- cummin(walk)
walk_max <- cummax(walk)

plot(1:1000, walk, type='l')
lines(1:1000, walk_min, col="blue", type='l')
lines(1:1000, walk_max, col="red", type='l')

# how many times did it cross 0?
sum(walk == 0)
which(walk == 0)


p <- 0.6
steps <- sample(c(1, -1), 1000, replace = T, prob=c(p, 1-p))
walk <- cumsum(steps)
walk_min <- cummin(walk)
walk_max <- cummax(walk)

plot(1:1000, walk, type='l')
lines(1:1000, walk_min, col="blue", type='l')
lines(1:1000, walk_max, col="red", type='l')

# how many times did it cross 0?
sum(walk == 0)
which(walk == 0)



