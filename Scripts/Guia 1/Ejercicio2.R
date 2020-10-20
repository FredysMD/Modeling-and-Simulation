# Datos de un apartamento
# Precio, Piso, Área, Cuartos, Edad y Calentador(true o false)


documento <- read.table("C:/Users/usuario/Documents/Modeling and simulation course/Exercises-in-R---Course-introduction/Datas/TXT/ejercicio2.txt"
                        ,sep="",header = T)

#-------------------

Apartamentos <- data.frame(documento) 
color <- c("red","green")
counts <- table(Apartamentos$Precio, Apartamentos$Area)
(counts)
barplot(counts, col=color)
legend("topleft", c("Precio", "Área"), cex = 0.8, fill = color)
#-------------------

#-------------------











