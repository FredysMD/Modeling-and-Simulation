
# Cargamos los dato sobre las uvas

DatoA <- data.frame("Diametro" = rbind(8.3, 8.6, 8.8, 10.5, 10.5, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4, 11.4, 11.7, 12, 12.9, 12.9),
                    "Altura"   = rbind(70, 65, 63, 72, 81, 83, 66, 75, 80, 75, 79, 76, 76, 69, 75, 74, 85), 
                    "Volumen"  = rbind(10.3, 10.3, 10.2, 16.4, 18.8, 19.7, 15.6, NA, 22.6, 19.9, 24.2, 21, 21.4, 21.3, 19.1, 22.2, 33.8), 
                    "Variedad" = rbind("Blanco", "Amarillo", "Rosa", "Rosa", "Rosa", "Rosa", "Blanco", "Amarillo", "Rosa", "Blanco", "Amarillo", "Blanco", "Rosa", "Rosa", "Amarillo", "Amarillo", "Blanco"))

DatoB <- data.frame("Diametro" = rbind(13.3, 13.7, 13.8, 14, 14.2, 14.5, 16, 16.3, 17.3, 17.5, 17.9, 18, 18,20.6),
                    "Altura"   = rbind(86, 71, 64, 78, 80, 74, 72, 77, 81, 82, 80, 80, 80, 87), 
                    "Volumen"  = rbind(27.4, 25.7, 24.9, NA, 31.7, 36.3, 38.3, 42.6, 55.4, 55.7, 58.3, NA, 52, 77), 
                    "Variedad" = rbind("Amarillo", "Rosa", "Rosa", "Amarillo", "Amarillo", "Rosa", "Rosa", "Rosa", "Blanco", "Blanco", "Amarillo", "Rosa", "Blanco", "Rosa"))


# función para calcular el coeficiente de variacón

Cv <- function(Datos){
  sd(Datos,na.rm = T) / mean(Datos, na.rm = T)
}


#----------------------
# Construcción de los diagramas circulares
#----------------------

variedadA <- table(DatoA$Variedad)
label <- paste(variedadA, "%", sep = "  ")
color <- c("yellow","white", "pink")
pie(variedadA, labels = label, clockwise = TRUE, col = color, main = "Gráfica de variedad para Datos A")
legend("topright", c("Amarillo", "Blanco", "Rosa"), cex = 0.8, fill = color)


variedadB<- table(DatoB$Variedad)
label <- paste(variedadB, "%", sep = "  ")
color <- c("yellow","white", "pink")
pie(variedadB, labels = label, clockwise = TRUE, col = color, main = "Gráfica de variedad para Datos B")
legend("topright", c("Amarillo", "Blanco", "Rosa"), cex = 0.8, fill = color)
#----------------------

#----------------------
# Los cuatiles
#----------------------

DiametroA <- DatoA$Diametro
AlturaB <- DatoB$Altura

Diametro <-  quantile(DiametroA, probs =  c(0.25))
paste("El valor máximo del 30% de los diámetros más pequeños de las uvas de los DatosA es ", Diametro)

Altura <-  quantile(AlturaB, probs = c(0.75))

paste("El valor  mínimo del 25% de las alturas mayores de las uvas de los DatosB es ", Altura, "pero es este valor no esta por lo que el menor seria 81")


#----------------------
# Histogramas de las alturas
#----------------------
ylabtext <- "Frecuencia"
xlabtext <- "Altura"

hist(DatoA$Altura, main = "Datos A", xlab = xlabtext, ylab = ylabtext)
hist(DatoB$Altura, main = "Datos B", xlab = xlabtext, ylab = ylabtext)
#---------------------
#----------------------
# Homogeneidad de el volumen
#----------------------
cva <- Cv(DatoA$Volumen)
cvb <-Cv(DatoB$Volumen)
paste("Datos mas Homogeneos en Volumen ",cva, " DatoA y ", cvb, " DatoB")
#----------------------
# Media y mediana para las alturas
#----------------------
ma<-mean(DatoA$Altura) 
mb<-mean(DatoB$Altura)
paste("altura media mayor ",ma," DatoA y " ,mb, ", DatoB")
#----------------------
mea<-median(DatoA$Altura) 
meb<-median(DatoB$Altura)
paste("altura mediana menor ",mea," DatoA y ",meb, "Dato B")
#----------------------


