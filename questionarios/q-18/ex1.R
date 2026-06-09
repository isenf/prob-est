library(here)

dados <- read.csv("data/lowbwt6.csv", sep=";", dec=",")

cor.test(dados$LWT, dados$BWT, method="spearman")
cor.test(dados$LWT, dados$BWT, method="kendal")

