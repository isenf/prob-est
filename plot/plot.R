library(here)

dados <- read.csv("data/Dieta.csv", sep=";", dec=",")

# salva o gráfico
jpeg("plot/figura.png")
pdf("plot/figura.pdf")
plot(dados$Idade, dados$Perda, xlab="Idade (anos)", ylab="Proporção de Perda de Peso (%)")
graphics.off()
