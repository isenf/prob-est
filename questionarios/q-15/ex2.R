library(here)

dados <- read.csv("data/lowbwt3.csv", sep=";", dec=",")

peso_normal <- dados[dados$LOW == 0,]
peso_baixo <- dados[dados$LOW == 1,]

qqnorm(peso_normal$LWT)
qqline(peso_normal$LWT, col="red")
shapiro.test(peso_normal$LWT)

qqnorm(peso_baixo$LWT)
qqline(peso_baixo$LWT, col="red")
shapiro.test(peso_baixo$LWT)

