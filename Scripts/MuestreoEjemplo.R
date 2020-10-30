N <- 60 # Población
n <- 20 # muestra

k <- N/n 

i <- sample(1:k,1)

paste("Saltos: ",k,sep =" ")

M <- matrix(1:20,1)

Poblacion <- c(1:60)

paste("Valor inicial: ",i,sep = " ")

(M[1]<-Poblacion[i]) # primer elemento de la matriz

for (n in 2:n) {

  M[n] <- Poblacion[i+(n-1)*k]
    
}

(M)

