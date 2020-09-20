library(readxl)
library(kableExtra)
library(faraway)

estudiantes <- read.table("C:/Users/usuario/Documents/Modeling and simulation course/Exercises-in-R---Course-introduction/Datas/TXT/Estudiantes.txt", header = TRUE)

kable(head(estudiantes),format = "markdown")

# Fa y Fr de los pesos de los Estudiantes
print(Fa_P <- table(estudiantes$Peso))
print(Fr_P <- prop.table(Fa_P))


# Fa y Fr de los nombres de los Estudiantes
print(Fa_N <- table(estudiantes$Nombres))
print(Fr_N <- prop.table(Fa_N))
