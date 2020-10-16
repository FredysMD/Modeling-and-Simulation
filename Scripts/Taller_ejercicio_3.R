# Ejercicio número 3 
# Datos
# lamda = 10 personas/hora, miu = 15 personas/hora
# M/M/1 

# Verificar que miu es mayor que lamda y que ambos sean mayor que cero

mensaje = "Error en los datos suministrados"

valoresCorrectos <- function(lamda, miu){
  
  if(miu > lamda && (lamda > 0 && miu>0) ){
     TRUE
  }else{
     FALSE
  }
  
}

# Factor de uso del sistema

p <- function(lamda, miu){
  
   if(valoresCorrectos(lamda, miu)){
      p  <- lamda / miu
   }else{
     mensaje
   }
  
}

#Probabilidad de ninguna unidad en el sistema 

Po <- function(lamda, miu){
    1 - p(lamda, miu)
}

# número promedio de unidades esperando en la fila

Lq <- function(lamda, miu){
  
   if(valoresCorrectos(lamda, miu)){
     (lamda)^2 / (miu*( miu - lamda ))
   }else{
     mensaje
   }
  
}

# Tiempo en que una unidad espera en la fila

Wq <- function(lamda, miu){
  
  if(valoresCorrectos(lamda, miu)){
     lamda / (miu*( miu - lamda ))
  }else{
    mensaje
  }
  
} 

lamda = 10
miu   = 15 # 4 m/personas es equivalente a 15 personas/h
minutos = 60 # 1 h = 60 m


#------------------------------
paste("La probabilidad de que haya línea de espera es de ",Po(lamda, miu), sep = "") 
#------------------------------

#------------------------------
paste("La longitud media de la línea de espera es de ",Lq(lamda, miu)," personas en cola.", sep = "") 
#------------------------------

#------------------------------
paste("El tiempo medio que un cliente permanece en cola es de ",Wq(lamda, miu)*minutos," minutos.", sep = "")
#------------------------------
