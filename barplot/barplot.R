library(here)

dados <- read.csv("data/Dieta.csv", sep=";", dec=",")

# geral
tab <- table(dados$Hipertensao)

barplot(tab, ylab="Frequência Absoluta", xlab="Hipertensão")
barplot(prop.table(tab), ylab="Frequência Relativa", xlab="Hipertensão", col=c("green", "blue"))

# variável quanlitativa
f_abs = table(dados$Dieta, dados$Hipertensao)
f_rel = prop.table(f_abs, 1)

barplot(f_rel, beside=T, col=c("blue", "yellow"), xlab="Hipertensão", ylab="Frequência Relativa")
legend("topleft", fill=c("blue", "yellow"), legend=c("Dieta A", "Dieta B"), bty="n")
