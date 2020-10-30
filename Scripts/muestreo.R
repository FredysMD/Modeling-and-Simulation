N <- 12000 # Población
n <- 600   # Muestra
posicion <- 1

k <- N/n

i <- sample(posicion:k,1) # un valor aleatorio entre 1 y k

paste("Saltos: ",k,sep =" ")

M <- matrix()

Poblacion <- c(posicion:N)

paste("Valor inicial: ",i,sep = " ")

(M[1]<-Poblacion[i]) # primer elemento de la matriz

# Empezamos desde la posición 2
for (n in 2:n) {
  M[n] <- Poblacion[i+(n-1)*k]
}

(M)
