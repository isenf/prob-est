library(here)

dados <- read.csv(file="data/Dieta.csv", sep=";", dec=",")

amp <- diff(range(dados$Perda))
cat("amplitude geral:", amp)

aux <- tapply(dados$Perda, dados$Dieta, range)
amp_A <- diff(aux$A)
amp_B <- diff(aux$B)

cat("amplitude tratamento A:", amp_A)
cat("amplitude tratamento B:", amp_B)
