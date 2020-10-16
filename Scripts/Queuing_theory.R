
# lamda: velocidad de llegada (hora)
# miu: velocidad a la cual el servidor puede atender un cliente (hora)

mensajerro = "Error al ingresar los valores"

soncorrectos <- function(lamda, miu){
  
  if(miu>lamda && (lamda > 0 && miu>0) ){
    TRUE
  }else{
    FALSE
  }
  
}

# Tiempo entre llegada o servicio
tiempentrellegoserv <-function(tiempo){
  
  if(tiempo>0){
    t <- 1/tiempo
  }else{
    mensajerro
  }
}


#Número de unidades en el sistema

numunidensist <- function(lamda,miu){
  
  if(soncorrectos(lamda,miu)){
    Ls <- lamda/(miu - lamda)
  }else{
    mensajerro
  }
 
}

# tiempo en el cual una unidad esta en el sistema

tiempunidsist <- function(lamda,miu){
   
  if(soncorrectos(lamda,miu)){
    Ws <- 1/(miu - lamda)
  }else{
    mensajerro
  }
}


# Número promedio de unidades esperando en la fila

numpromunidaespfila <- function(lamda,miu){
  
  Lq <- (lamda)^2 / (miu*( miu - lamda ))
   
}

# Tiempo en que una unidad espera en la fila 

tiemunidaespfila <- function(lamda,miu){
  
  Ws <- lamda/(miu*( miu - lamda ))

}

# Factor de uso del sistema 

factorusosist  <- function(lamda,miu){
  
  if(soncorrectos(lamda,miu)){
    ro <- lamda/miu
  }else{
    mensajerro
  }
  
} 


# Probabilidad de no uso

probnouso <- function(factoruso){
  
  Po <- 1 - factoruso 
  
}


# Probabilidad de "n" unidades en el sistema al mismo tiempo

probnunidsist <- function(lamda,miu,n_unidades){
  
  if(n_unidades>0 && soncorrectos(lamda,miu)){
    Pn <-(1 - (lamda/miu) )*(lamda/miu)^n_unidades
  }else{
    mensajerro
  }
  
}



#######################################
#   Ejercicio de la doctora           #
#######################################

# 1
minutos_pacientes_llegada = 30
minutos_pacientes_doctora = 20
probabilidad_numero_pacientes_tiempo = 2

lamda <- tiempentrellegoserv(0.5) # 0.5h = 30m
miu <- tiempentrellegoserv(20)*60 # pasar de minutos a hora

paste("Número promedio de pacientes en el sistema: ",numunidensist(lamda,miu),sep="")
paste("Tiempo total que consume un paciente en el consultorio: ",tiempunidsist(lamda,miu),sep="")
paste("Número promedio de pacientes en fila: ",numpromunidaespfila(lamda,miu),sep="")
paste("Tiempo total que consume un paciente en fila: ",tiemunidaespfila(lamda,miu),sep="")
paste("Factor de uso del sistema: ",fu <- factorusosist(lamda,miu),sep="")

paste("Probabilidad de que el consultorio este vacío: ",probnouso(fu),sep="")
paste("Probabilidad de 2 pacientes en el sistema: ",probnunidsist(lamda,miu,probabilidad_numero_pacientes_tiempo),sep="")

