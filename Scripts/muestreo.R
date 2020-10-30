N <- 12000 # Población
n <- 600   # Muestra

k <- N/n

i <- sample(1:k,1)

paste("Saltos: ",k,sep =" ")

M <- matrix()

Poblacion <- c(1:12000)

paste("Valor inicial: ",i,sep = " ")

(M[1]<-Poblacion[i]) # primer elemento de la matriz

# Empezamos desde la posición 2
for (n in 2:n) {
  M[n] <- Poblacion[i+(n-1)*k]
}

(M)
