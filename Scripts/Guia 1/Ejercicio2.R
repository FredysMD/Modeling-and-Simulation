# Datos de un apartamento
# Precio, Piso, �rea, Cuartos, Edad y Calentador(true o false)

data <- read.table(".txt", header = TRUE, sep = ",",stringsAsFactors = FALSE)


Apartamento <- data.frame(data)

kable(head(Apartamento),format = "markdown")








