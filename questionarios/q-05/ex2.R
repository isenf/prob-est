library(here)

dados <- read.csv(here("data/cgd1.csv"), sep=";", dec=".")

tab <- table(dados$PH, dados$Sexo)
tabr <- prop.table(tab, 1)

round(tabr, 4)*100
