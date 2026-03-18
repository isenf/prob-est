library(here)

here()

dados <- read.csv(here("data/shock1.csv"), sep=";")

mediana <- median(dados$SBP)
mediana_tempo <- tapply(dados$SBP, dados$Tempo, median)
