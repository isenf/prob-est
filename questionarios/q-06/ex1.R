library(here)

dados <- read.csv("data/corn.csv", sep=";", dec=",")

plot(dados$Producao, dados$Custo, xlab="Produção", ylab="Custo")
