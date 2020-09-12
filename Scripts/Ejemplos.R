library(readxl)
library(kableExtra)

dataset <- read_excel("C:/Users/usuario/Documents/Modeling and simulation course/Exercises-in-R---Course-introduction/Datas/CSV/Base salarios.xls", sheet = 2)
kable(head(dataset), "markdown")

#################################################################################################

auto <- read.csv("C:/Users/usuario/Documents/Modeling and simulation course/Exercises-in-R---Course-introduction/Datas/CSV/auto-mpg.csv", 
                 header = TRUE, sep = ",",
                 stringsAsFactors = FALSE)

kable(head(auto),format = "markdown")

#################################################################################################

documento <- read.table("C:/Users/usuario/Documents/Modeling and simulation course/Exercises-in-R---Course-introduction/Datas/TXT/archivo.txt", 
                 header = TRUE, sep = ",",
                 stringsAsFactors = FALSE)

kable(head(documento),format = "markdown")

#################################################################################################

Tabla <- read.table("C:/Users/usuario/Documents/Modeling and simulation course/Exercises-in-R---Course-introduction/Datas/TXT/Estudiantes.txt", header = TRUE)


