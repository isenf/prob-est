library(here)

dados <- read.csv("data/ac.csv", sep=";", dec=",")

cor(dados$AbdCirc, dados$IdadeG, method="pearson")
cor(dados$AbdCirc, dados$IdadeG, method="spearman")
cor(dados$AbdCirc, dados$IdadeG, method="kendal")
