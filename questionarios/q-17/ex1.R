library(here)

dados <- read.csv("data/corn.csv", sep=";", dec=",")

qqnorm(dados$Producao)
qqline(dados$Producao, col="red")
shapiro.test(dados$Producao)

qqnorm(dados$Custo)
qqline(dados$Custo, col="red")
shapiro.test(dados$Custo)

cor.test(dados$Producao, dados$Custo, method="pearson", conf.level=0.9)
