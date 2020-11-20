


xbarra <- 19500  # Datos del problema
desvia <- 3900   # Datos del problema
n <- 100         # Datos del problema
mu <- 20000      # Media de referencia

est <- (xbarra - mu) / (desvia / sqrt(n))
est  # Para obtener el valor del estadístico

pnorm(est)  # Para obtener el valor-P


