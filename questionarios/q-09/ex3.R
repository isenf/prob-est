library(here)

dados <- read.csv(here("data/lowbwt3.csv"), sep=";", dec=",")

lwtN <- dados$LWT[dados$HT ==0] # 0: Não

hist(lwtN)

media <- mean(lwtN)
desvio <- sd(lwtN)
x <- seq(min(lwtN), max(lwtN), by=.5)
fteorico <- dnorm(x, mean=media, sd=desvio)

hist(lwtN, freq=F, xlab="Hemoglobina Tempo 1", ylab="Frequência Relativa")
lines(x, fteorico, col="red")

qqnorm(lwtN, xlab="Quantis Teóricos", ylab="Quantis Observados")
qqline(lwtN, col="red")
