# Datos de un apartamento
# Precio, Piso, Área, Cuartos, Edad y Calentador(true o false)


#-------------------
# Lectura del Archivo ejercicio2.txt
#-------------------

documento <- read.table("C:/Users/usuario/Documents/Modeling and simulation course/Exercises-in-R---Course-introduction/Datas/TXT/ejercicio2.txt"
                        ,sep="",header = T)
#-------------------
# Captamos los datos en un data.frame
#-------------------

Apartamentos <- data.frame(documento) 
#-------------------

#-------------------
# Barplot de precio y área
#-------------------
color <- c("red","green")
counts <- table(Apartamentos$Precio, Apartamentos$Area)
(counts)
barplot(counts, main="Apartamentos Área vs Precio)" , col=color)
legend("topleft", c("Precio", "Área"), cex = 0.8, fill = color)
#-------------------

#-------------------
# Datos de apartamentos en función del precio,área, número de cuartos y calentador
#-------------------

color <- ifelse(Apartamentos$Calentador == 'no', 'red', 'green3')
datos <- Apartamentos[, c('Precio', 'Area', 'Cuartos')]

pairs(datos,main="Apartamentos (Rojo: Sin calentador - Verde: Con calentador)",lower.panel=NULL, col = color, pch=19, cex=0.8)

#-------------------









