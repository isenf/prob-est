library(here)

dados <- read.csv("data/cgd3.csv", sep=";", dec=".")

# Verificar se as distribuições exponencial ou normal se ajustam bem a variável idade do paciente, 
# verificar esses ajustes globalmente e separado por Tratamento

# histogramas

png("avaliacao/p2/plots/global_hist.png")
hist(dados$Idade, ylab="Frequência absoluta", xlab="Idade", main="")
graphics.off()

# idade global

# distribuição normal
media <- mean(dados$Idade)
desvio <- sd(dados$Idade)
x <- seq(min(dados$Idade), max(dados$Idade), by=0.001)
fteorico <- dnorm(x, mean=media, sd=desvio)

png("avaliacao/p2/plots/norm_global_hist.png")
hist(dados$Idade, freq=F, xlab="Idade do Paciente (anos)", ylab="Frequência Relativa", main="")
lines(x, fteorico, col="red")
graphics.off()

png("avaliacao/p2/plots/norm_global_qqnorm.png")
qqnorm(dados$Idade, ylab="Quantis observaados", xlab="Quantis Teóricos", main="")
qqline(dados$Idade, col="red")
graphics.off()

# distribuição exponencial

x <- seq(min(dados$Idade), max(dados$Idade), by=1)
fteorico <- dexp(x, rate=1/media)
png("avaliacao/p2/plots/exp_global.png")
hist(dados$Idade, freq=F, xlab="Idade do Paciente (anos)", ylab="Frequência Relativa", main="")
lines(x, fteorico, col="red")
graphics.off()

