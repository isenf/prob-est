library(here)

dados <- read.csv(file="data/Dieta.csv", sep=";", dec=",")

iiq <- IQR(dados$Perda)
cat("IIQ:", iiq)

iiq_dieta <- tapply(dados$Perda, dados$Dieta, IQR)
cat("IIQ dieta A:", iiq_dieta[1], "\nIIQ dieta B:", iiq_dieta[2])
