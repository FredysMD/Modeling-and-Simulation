# Constraste para dos variables

frecuencias <- c(37,12,10,18,11,16,59,19,10,7,20,8,12,24)

tabla <- matrix(frecuencias, 7,2, dimnames =  list(c("A","B","C","D","E","F","G"), c("Agua Arriba","Agua abajo")))

(tabla)

# para F
chisq.test(tabla, correct = F) # Correción T en forma automatica


