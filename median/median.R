library(here)

dados = read.csv(here("data/Dieta.csv"), sep=";", dec=",")

mediana = median(dados$Perda)
cat("Mediana: ", mediana)

mediana_dieta = tapply(dados$Perda, dados$Dieta, median)
cat("\nMediana relacionadas com as dietas:\nA -> ", media_dieta[1], "\nB: ", media_dieta[2])
