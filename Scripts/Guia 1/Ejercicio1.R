# Matriz 14x5
# Variables: Nombre, nivel eduacativo, peso, altura y edad.



#-------------------------------

Estudiantes <- matrix(1:30,14,4 ,byrow = T)



dimnames(Estudiantes) <- list(c("a","b","c","aa","bb","cc","a","b","c","aaa","bbb","ccc","aaaa","bbbb"), c("Curso","Peso","Altura","Edad"))

(Estudiantes)


sexo <- c(1,1,1,1,0,0,1,0,1,0,1,0,1,0) # 0: Hombre y 1: Mujeres

Estudiantes <- cbind(Estudiantes,sexo)
(Estudiantes)

#-------------------------------


#-------------------------------
Estudiantes<-data.frame(Estudiantes)
class(Estudiantes)

#-------------------------------

#-------------------------------
hist(Estudiantes$sexo, main="Sexo de los estudiantes", xlab = "0: Hombres, 1: Mujeres",ylab = "Frecuencia")
#-------------------------------

#-------------------------------
boxplot(formula = Estudiantes$Curso ~ Estudiantes$sexo, data =  Estudiantes, main = "Nivel Educativo por sexo",xlab = "0: Hombres, 1: Mujeres", ylab = "Frecuencia", col = c("orange3", "yellow3"))
#-------------------------------



