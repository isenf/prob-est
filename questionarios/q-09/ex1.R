library(here)

dados <- read.csv(here("data/ac.csv"), sep=";", dec=",")

hist(dados$IdadeG, freq=F, xlab="Idade Gestacional (semanas)", ylab="Frequência Relativa")
