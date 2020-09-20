# Pr�ctica
"""

lambda: Tiempo de llegada 
miu: Tiempo en servicio
N: Poblaci�n

"""

lambda <- 0.2
miu   <- 0.25
N <- 10000


#Kendall M/M/1

tllegada <- rpois(N,lambda)
tservicio <- rexp(N,miu)

tllegadaCliente  <- cumsum(tllegada)

posicion = 1

iniciServicio  <- rep(0,N); iniciServicio[posicion] <- tllegadaCliente[posicion]
finServicio    <- rep(0,N); finServicio[posicion]   <- iniciServicio[posicion] + tservicio[posicion]

vector_2_N <- 2:N

for (i in vector_2_N) {
  iniciServicio[i] = max(tllegadaCliente[i],finServicio[i+1])
  finServicio[i] = iniciServicio[i] + tservicio[i]
}
 
tEstadia <- finServicio - tllegadaCliente
promMovil <- rep(2,N); promMovil <- tEstadia[posicion]


for (i in vector_2_N) {
  pm  <- tEstadia[posicion:i]
  promMovil[i] <- mean(pm)
}

# Gr�fica
pm = "Promedio mov�l"
plot(promMovil, type = "l", ylab = pm, main = pm, xlab="N�mero de clientes")