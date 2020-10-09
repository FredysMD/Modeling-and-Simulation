# Exercise 

(bd <- read.table("C:/Users/usuario/Documents/Modeling and simulation course/Exercises-in-R---Course-introduction/Datas/TXT/mibasededatos.txt", header = TRUE))

# Datos del 3 y 7 individuo
(datos_3y7 <- list(bd[c(3, 7),]))
# Altura del 9 individuo
(altura_9  <- bd$Altura[9])
# Mayor en edad
(comprobarEdad <- bd$Edad[1] > bd$Edad[10])
# Comprobar edad en conjunto
(comprobarPeso <- bd$Peso[c(1,2)]) < (bd$Peso[c(9,10)])
# Edad y Altura del individuo 6
(datos_6 <- (bd[,c(2,4)])[6,])
# Con lista
(datos1y10 <- list((bd[,c(2,4)])[1,],(bd[,c(2,4)])[10,]))
#Comparar edades de 1 y 10 individuo
(compararedades <- datos1y10[[1]][1] > datos1y10[[2]][1])


(matriz <- as.matrix(bd[2:4],nrow = 10))
(raza <-  matrix(c(bd[1]),nrow = 10))
(matriz <- cbind(matriz,raza))


