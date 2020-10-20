# Ejercicio número 3 
# Datos
# lamda = 10 personas/hora, miu = 15 personas/hora
# M/M/1 

# Verificar que miu es mayor que lamda y que ambos sean mayor que cero


lambda <- 10
miu   <- 15
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

tEstadia <- finServicio - iniciServicio  #tiempo de estadia en el sistema
tEspera <- iniciServicio - tllegadaCliente #tiempo de espera para un cliente se atendido
tSistema <- finServicio + tllegadaCliente  #tiempo que demora en el sistema


# promedio movil
promMovil <- rep(2,N); promMovil[posicion] <- tEstadia[posicion]


for (i in vector_2_N) {
  pm  <- tEstadia[posicion:i]
  promMovil[i] <- mean(pm)
}

# Gráfica
pm = "tEstadia"
plot(promMovil, type = "l", ylab = pm, main = pm, xlab="Número de clientes")




Cola <- data.frame("tllCliente" = tllegadaCliente,
                   "tAtención" = tEstadia,
                   "iniciServicio"=iniciServicio,
                   "finServicio"=finServicio,
                   "tSistema"=tSistema,
                   "tEspera"= tEspera)

# Data frame
(Cola)
