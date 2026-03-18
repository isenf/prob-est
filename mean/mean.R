library(here)

dados <- read.csv(here("data/Dieta.csv"), sep=";", dec=",")

# argumento deve ser um vetor
media <- mean(dados$Perda)
cat("Média: ", media)

# média em relação ao tipo de dieta
media_dieta <- tapply(dados$Perda, dados$Dieta, mean)
cat("\nMédia relacionadas com as dietas:\nA -> ", media_dieta[1], "\nB: ", media_dieta[2])
