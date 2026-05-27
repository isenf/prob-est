library(here)

dados <- read.csv("data/cgd1.csv", sep=";", dec=".")

tabela <- table(dados$PH)

prop.test(tabela[1], sum(tabela), p=0.60, conf.level=0.90)
