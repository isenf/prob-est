library(here)

here()

dados <- read.csv(here("data/seringueira.csv"), sep=";", dec=",")

media <- mean(dados$Producao)
media_local <- tapply(dados$Producao, dados$Local, mean)
