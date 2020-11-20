
# Dados

# Las posiciones del vector son las caras del dado. Ej: c[1] es cara del 1 y c[6] es el de la cara 6

frecuencias <- c(116,120,115,120,125,124) # Lanzamiento

hist(frecuencias)


chisq.test(frecuencias)
