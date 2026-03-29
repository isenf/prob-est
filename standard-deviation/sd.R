library(here)

dados <- read.csv(file="data/Dieta.csv", sep=";", dec=",")

dp <- sd(dados$Perda)
cat("desvio padrão geral:", dp)

dp_dieta <- tapply(dados$Perda, dados$Dieta, sd)
cat("dp dieta A:", dp_dieta[1], "\ndp dieta B:", dp_dieta[2])

