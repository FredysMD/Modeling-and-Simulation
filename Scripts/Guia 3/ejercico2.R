# Llenado de 600 ml

miu <- 600 #Hipotesis nula
nivelSignificancia <- 0.05 # Nivel de significancia del 5%

muestras <-c(602,601,597,591,596,601,602,600,589,590) # 10 muestras aleatorias

hist(muestras)

t.test(muestras, alternative = 'two.sided',
       conf.level = 1-nivelSignificancia, mu = miu)


# No existe evidencia suficiente para rechazar la Ho, es decir, que 
# las botellas estan siendo llenadas con 600 ml