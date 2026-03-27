library(here)

dados <- read.csv(here("data/lowbwt1.csv"), sep=";")

tab <- table(dados$LOW)
tabr <- prop.table(tab)

round(tabr, 2) * 100
