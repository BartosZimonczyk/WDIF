rentownosc <- function(V, P, ci, chwila_T, chwile_ti, obecne_t){
  rownanie <- function(y){
    P*exp(-y*(chwila_T-obecne_t)) + sum(ci*P*exp(-y*(chwile_ti-obecne_t))*(obecne_t < chwile_ti)) - V
  }
  
  uniroot(rownanie, c(-1,1))[1:2]
}

# zad 1
rentownosc(108, 100, 0.05, 4, 1:4, 0)
rentownosc(112, 100, 0.05, 4, 1:4, 1)
rentownosc(103, 100, 0.05, 4, 1:4, 2)

# zad 2
rentownosc(101.2, 100, 0.1, 1, 1, 0)
rentownosc(101.4, 100, 0.05, 1, c(0.5, 1), 0)