library(here)

dados <- read.csv("data/lowbwt2.csv", sep=";")

tabela <- table(dados$SMOKE)
pIC <- prop.test(tabela[1], sum(tabela), conf.level=0.99)$conf.int

round(pIC, 4) * 100
