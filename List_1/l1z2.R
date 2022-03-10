set.seed(42, kind="Mersenne-Twister")

cp <- function(s, k){
    max(c(s-k, 0))
}
pp <- function(s, k){
    max(c(k-s, 0))
}

s <- 0:200

out_1 <- sapply(s, cp, 80) - sapply(s, cp, 120)
out_2 <- sapply(s, cp, 120) - sapply(s, pp, 80)
out_3 <- sapply(s, cp, 50) + sapply(s, cp, 150) - 2*sapply(s, cp, 100)

check_out <- function(v){
    data.frame('max'=max(v),
               'which.max'=which.max(v),
               'min'=min(v),
               'which.min'=which.min(v))
}

check_out(out_1)
check_out(out_2)
check_out(out_3)

plot(s, out_1, type='l')
plot(s, out_2, type='l')
plot(s, out_3, type='l')

