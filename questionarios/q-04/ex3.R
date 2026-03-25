library(here)

dados <- read.csv(here("data/seringueira.csv"), sep=";", dec=",")

dp <- sd(dados$Altura)

dp_local <- tapply(dados$Altura, dados$Local, sd)

cat(dp)
cat(dp_local)
