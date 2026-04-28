library(here)

# exemplo 1

tempo <- c(1377, 790, 250, 6890, 150, 11812, 273, 1140, 1317, 4713, 1607, 4193,
           2966, 3570, 1589, 5089, 5803, 819, 8439, 5327, 4034, 1056, 1416,
           10265, 8318, 1185, 3409, 2656, 622, 1149, 9965, 1908, 6881, 8911,
           2851, 1017, 5488, 758, 2358, 3626, 404, 11269, 7709, 2142, 6319,
           571, 825, 1200, 1680, 595)

hist(tempo, freq=F, xlab="Tempo (dias)", ylab="Frequência Relativa", main="")


media <- mean(tempo)
x <- seq(0, 12000, by=1)
fteorico <- dexp(x, rate=1/media)
hist(tempo, freq=F, xlab="Tempo (dias)", ylab="Frequência Relativa", main="")
lines(x, fteorico, col="red")   # a curva de ajuste segue o comportamento do histograma


# exemplo 2

dados <- read.csv(here("data/Cafe.csv"), sep=";", dec=",")

peso <- dados$Peso
media <- mean(peso)
desvio <- sd(peso)
x <- seq(min(peso), max(peso), by=0.001)
fteorico <- dnorm(x, mean=media, sd=desvio)

hist(peso, freq=F, xlab="Peso Empacotado (Kg)", ylab="Frequência Relativa", main="")
lines(x, fteorico, col="red")   # não segue distribuição normal

qqnorm(peso, ylab="Quantis observaados...", xlab="Quantis Teóricos")
qqline(peso, col="red")


# considerar as máquinas como um grupo
MaqA <- dados[dados$Maquina=="A",]
MaqB <- dados[dados$Maquina=="B",]

mediaA <- mean(MaqA$Peso)
desvioA <- sd(MaqA$Peso)
xA <- seq(min(MaqA$Peso), max(MaqA$Peso), by=0.001)
fteoricoA <- dnorm(xA, mean=mediaA, sd=desvioA)

hist(MaqA$Peso, freq=F, xlab="Peso Empacotado (Kg)", ylab="Frequência Relativa", main="")
lines(xA, fteoricoA, col="red")

qqnorm(MaqA$Peso, ylab="Quantis observaados...", xlab="Quantis Teóricos")
qqline(MaqA$Peso, col="red")


mediaB <- mean(MaqB$Peso)
desvioB <- sd(MaqB$Peso)
xB <- seq(min(MaqB$Peso), max(MaqB$Peso), by=0.001)
fteoricoB <- dnorm(xB, mean=mediaB, sd=desvioB)

hist(MaqB$Peso, freq=F, xlab="Peso Empacotado (Kg)", ylab="Frequência Relativa", main="")
lines(xB, fteoricoB, col="red")

qqnorm(MaqB$Peso, ylab="Quantis observaados...", xlab="Quantis Teóricos")
qqline(MaqB$Peso, col="red")
