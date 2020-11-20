# Ingresos en un hospital por día


frecuencias <- c(78,90,94,89,110,84,44) # ingresos de Lunes a Domingo
proporciones <- c(0.15,0.15,0.15,0.15,0.20,0.15,0.05)


Xsq <- chisq.test(frecuencias)

prop <- chisq.test(frecuencias, p = proporciones)
(Xsq)
(prop)
Xsq$observed   # observed counts (same as M)
Xsq$expected 

# grados de libertad es numero de datos menos 1