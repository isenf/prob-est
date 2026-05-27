library(here)
library(EnvStats)

dados <- read.csv("data/laheart.csv", sep=";", dec=".")

varTest(dados$Colesterol, sigma.squared = 3000, conf.level = 0.95)
