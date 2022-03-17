# zad 5
v <- 1/1.05
v/(1-v^4)
3*v^2/(1-v^4)
5*v^3/(1-v^4)
7*v^4/(1-v^4)

# zad 6
1/(1-v)
1.8/(1-v^2)

renta_coroczna <- function(i){
    v<-1/(1+i)
    1/(1-v)
}

renta_codwalata <- function(i){
    v<-1/(1+i)
    1.8/(1-v^2)
}

roznica <- function(i){
    renta_coroczna(i) - renta_codwalata(i)
}

stopy <- seq(0.05, 1, by=0.05)

plot(stopy, renta_coroczna(stopy), col='red')
points(stopy, renta_codwalata(stopy), col='blue')
uniroot(roznica, c(0.001,1))
?uniroot

renta_coroczna(0.26)
renta_codwalata(0.26)

# zad 8

renta <- function(n){
    v <- 1/1.05
    ns <- c(1:n, (n-1):1)
    ps <- ns/n
    vs <- v^(1:(2*n-1))
    sum(ps*vs)
}

kolejne_renty <- sapply(2:100, renta)
which.max(kolejne_renty)
plot(2:100, kolejne_renty)
max(kolejne_renty)















