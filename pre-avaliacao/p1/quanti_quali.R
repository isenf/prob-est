library(here)

dados <- read.csv("data/cancer.csv", sep=";")

# a)	O tempo de sobrevivência (Tempo) é afetado pelo tipo de tratamento (Tratamento);
media <- tapply(dados$Tempo, dados$Tratamento, mean)
mediana <- tapply(dados$Tempo, dados$Tratamento, median)
dp <- tapply(dados$Tempo, dados$Tratamento, sd)
aux <- tapply(dados$Tempo, dados$Tratamento, range)
amp_A <- diff(aux$A)
amp_B <- diff(aux$B)
IIQ <- tapply(dados$Tempo, dados$Tratamento, IQR)

png("pre-av/p1/q1_boxplot.png")
boxplot(dados$Tempo~dados$Tratamento, ylab="Tempo (dias)", xlab="Tipo de Tratamento")
graphics.off()
