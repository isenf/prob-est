library(here)

dados <- read.csv("data/Dieta.csv", sep=";", dec=",")

# h0 não há associação entre variáveis
chisq.test(table(dados$Dieta, dados$Hipertensao))   # há associação, p-valor < nível de significância
