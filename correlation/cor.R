library(here)

dados <- read.csv("data/Dieta.csv", sep=";", dec=",")

cor(dados$Idade, dados$Perda, method="pearson")
cor(dados$Idade, dados$Perda, method="spearman")
cor(dados$Idade, dados$Perda, method="kendal")
