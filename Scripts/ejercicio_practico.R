
moda <- function(dato){
   fa <- data.frame(table(dato))
   
   moda <- fa[which.max(fa$Freq), 1]
  
}


zona1<-rbind(194, 199, 191, 202, 215, 214, 197, 204, 199, 202, 230, 193, 194, 209)

zona2<-rbind(158, 161, 143, 174, 220, 156, 156, 156, 198, 161, 188, 139, 147, 116)

datos <- data.frame("zona1"= zona1, "zona2" = zona2)

#----------------------------------
(summary(datos))

paste("moda de zona 1: ",moda(datos$zona1),sep="") 


paste("varianza de zona 1: ",var(datos$zona1),sep="")
paste("varianza de zona 2: ",var(datos$zona2),sep="")
#----------------------------------

#----------------------------------
zona1 <- datos$zona1
zona2 <- datos$zona2
hist(zona1,main = "Histograma de zona 1", xlab = "número de colonia/ 1000mm agua", ylab = "Frecuencia")
hist(zona2,main = "Histograma de zona 2", 
     xlab = "número de colonia/ 1000mm agua", ylab = "Frecuencia")
#----------------------------------

#----------------------------------

boxplot(x = datos, main = "Niveles de colonias de bacterias", 
     col = c("orange3", "yellow3", "green3", "grey"))

#----------------------------------