library(here)

dados <- read.csv("data/ac.csv", sep=";", dec=",")

# 2) A circunferência abdominal é afetada pelo sexo da criança.
media <- tapply(dados$AbdCirc, dados$Sexo, mean)
mediana <- tapply(dados$AbdCirc, dados$Sexo, median)
dp <- tapply(dados$AbdCirc, dados$Sexo, sd)
aux <- tapply(dados$AbdCirc, dados$Sexo, range)
amp_f <- diff(aux$Feminino)
amp_m <- diff(aux$Masculino)
iiq <- tapply(dados$AbdCirc, dados$Sexo, IQR)

diff(media)
diff(mediana)

png("avaliacao/p1/ex2_boxplot.png")
boxplot(dados$AbdCirc~dados$Sexo, xlab="Sexo da Criança", ylab="Circunferência Abdominal (cm)")
graphics.off()