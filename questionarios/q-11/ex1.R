library(EnvStats)
library(here)

dados <- read.csv("data/seringueira.csv", sep=";", dec=",")

sqrt(varTest(dados$Altura, conf.level=0.99)$conf.int)

