library(here)

dados <- read.csv(here("data/probabilidade.csv"), sep=";", dec=",")

# a) Verificar qual modelo de probabilidade contínuo se ajusta a variável tempo de duração das lâmpadas.

png(here("pre-avaliacao/p2/hist_ex1.png"))
hist(dados$Tempo, xlab="Tempo (em dias)", ylab="Frequência Absoluta", main="") # semelhante ao modelo exponencial
graphics.off()

media <- mean(dados$Tempo)
x <- seq(0, max(dados$Tempo), by=1)
fteorico <- dexp(x, rate=1/media)

png(filename=here("pre-avaliacao/p2/hist_ex1_curva.png"))
hist(dados$Tempo, freq=F, xlab="Tempo (em dias)", ylab="Frequência Relativa", main="")
lines(x, fteorico, col="red")
graphics.off()

