library(here)

dados <- read.csv(here("data/shock3.csv"), sep=";", dec=",")

iiq <- IQR(dados$RCI)

iiq_tempo <- tapply(dados$RCI, dados$Tempo, IQR)
