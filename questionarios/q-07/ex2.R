library(here)

dados <- read.csv("data/cgd1.csv", sep=";", dec=".")

tab_abs <- table(dados$PH, dados$Sexo)
tab_rel <- prop.table(tab_abs, 1)

barplot(tab_rel, beside=T, col=c("blue", "red"))
