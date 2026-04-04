library(here)

dados <- read.csv("data/Dieta.csv", sep=";", dec=",")

# geral
boxplot(dados$Perda, ylab="Proporção de Perda de Peso (%)")

# variável qualitativa
boxplot(dados$Perda~dados$Dieta, ylab="Proporção de Perda de Peso (%)", xlab="Tipo de Dieta", names=c("Dieta A", "Dieta B"))
