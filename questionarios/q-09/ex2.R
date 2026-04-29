library(here)

dados <- read.csv(here("data/shock3.csv"), sep=";", dec=",")
HGt1 <- dados$HG[dados$Tempo == 1]

hist(HGt1)

media <- mean(HGt1)
desvio <- sd(HGt1)
x <- seq(min(HGt1), max(HGt1), by=.1)
fteorico <- dnorm(x, mean=media, sd=desvio)

hist(HGt1, freq=F, xlab="Hemoglobina Tempo 1", ylab="Frequência Relativa")
lines(x, fteorico, col="red")

qqnorm(HGt1, xlab="Quantis Teóricos", ylab="Quantis Observados")
qqline(HGt1, col="red")
