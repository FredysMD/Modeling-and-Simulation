

lambda <- 0.2
miu   <- 0.25
N <- 10000


#Kendall M/M/1

tllegada <- rpois(N,lambda)
tservicio <- rexp(N,miu)

tllegadaCliente  <- cumsum(tllegada) #momento en que llega cada cliente

posicion = 1

iniciServicio  <- rep(0,N); iniciServicio[posicion] <- tllegadaCliente[posicion]
finServicio    <- rep(0,N); finServicio[posicion]   <- iniciServicio[posicion] + tservicio[posicion]

vector_2_N <- 2:N # ya miramos el primer cliente

for (i in vector_2_N) {
  iniciServicio[i] = max(tllegadaCliente[i],finServicio[i-1])
  finServicio[i] = iniciServicio[i] + tservicio[i]
}

# Tiempos en el sistema

tEstadia <- finServicio - iniciServicio
tEspera <- iniciServicio - tllegadaCliente
tSistema <- finServicio - tllegadaCliente

Cola <- data.frame("tllCliente" = tllegadaCliente,
                   "tAtención" = tEstadia,
                   "iniciServicio"=iniciServicio,
                   "finServicio"=finServicio,
                   "tSistema"=tSistema,
                   "tEspera"= tEspera)

promMovil <- rep(2,N); promMovil[posicion] <- tEstadia[posicion]


for (i in vector_2_N) {
  pm  <- tEstadia[posicion:i]
  promMovil[i] <- mean(pm)
}

# Gráfica
pm = "tEstadia"
plot(promMovil, type = "l", ylab = pm, main = pm, xlab="Número de clientes")