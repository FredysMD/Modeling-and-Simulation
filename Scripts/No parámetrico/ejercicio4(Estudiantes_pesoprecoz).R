
# Estudiantes. Analizar el éxito y el sobrepeso

frecuencias <- c(162,263,38,37)

tabla <- matrix(frecuencias, 2,2, dimnames = list(c("Éxito = Si", "Éxito = No"),c("Sobrepeso = Si", "Sobrepeso = No")))

xcuadrado <- chisq.test(tabla,correct = F)

(xcuadrado)
contribucion <- 100 * xcuadrado$residual^2/xcuadrado$statistic


corrplot(xcuadrado$residual,is.cor = F)
round(contribucion,3)