library(here)
library(BSDA)

dados <- read.csv("data/seringueira.csv", sep=";", dec=",")

z.test(dados$Producao, sigma.x =22, mu=790, conf.level = .99)

