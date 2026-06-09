library(here)
library(agricolae)

dados <- read.csv("data/seringueira.csv", sep=";", dec=",")

K.test <- kruskal(dados$Altura, dados$Local)
K.test$statistics
K.test$group
