

# Se generan dos mustras aleatorias 

# muestraUna son 100 datos aleatorios con media de 10
muestraUna <- rnorm(100, mean = 10)

# muestraDos son 100 datos aleatorios con media de 10.5
muestraDos <- rnorm(100, mean = 10.5)


t_student <- t.test(muestraUna, muestraDos)

(t_student) # Prueba de T-student

# Boxplot

boxplot(muestraUna,muestraDos, main ="Distribucción de las muestras",xlab ="Muestras",ylab="Valores", names = c("Muestra 1", "Muestra 2"))
abline(h = c( mean(muestraUna), mean(muestraDos)), col = c("green","red")) #Linea verde(media de muestra uno) y roja(media de muestra dos)





