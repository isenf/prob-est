library(here)

dados <- read.csv("data/lowbwt3.csv", sep=";", dec=",")

boxplot(dados$LWT~dados$LOW)
