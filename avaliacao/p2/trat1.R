library(here)

dados <- read.csv("data/cgd3.csv", sep=";", dec=".")

# Verificar se as distribuições exponencial ou normal se ajustam bem a variável idade do paciente, 
# verificar esses ajustes globalmente e separado por Tratamento

# idade no Tratamento 1
idade_trat1 <- dados$Idade[dados$Tratamento == 1]

png("avaliacao/p2/plots/trat1_hist.png")
hist(idade_trat1, ylab="Frequência absoluta", xlab="Idade no Tratamento 1", main="")
graphics.off()

# distribuição normal

desvio <- sd(idade_trat1)
x <- seq(min(idade_trat1), max(idade_trat1), by=0.001)
fteorico <- dnorm(x, mean=media, sd=desvio)

png("avaliacao/p2/plots/norm_trat1_hist.png")
hist(idade_trat1, freq=F, xlab="Idade do Paciente (anos) no Tratamento 1", ylab="Frequência Relativa", main="", ylim=c(0, 0.06))
lines(x, fteorico, col="red")
graphics.off()

png("avaliacao/p2/plots/norm_trat1_qqnorm.png")
qqnorm(idade_trat1, ylab="Quantis observaados", xlab="Quantis Teóricos", main="")
qqline(idade_trat1, col="red")
graphics.off()

# distribuição exponencial
x <- seq(min(idade_trat1), max(idade_trat1), by=1)
fteorico <- dexp(x, rate=1/media)
png("avaliacao/p2/plots/exp_trat1.png")
hist(idade_trat1, freq=F, xlab="Idade do Paciente (anos)", ylab="Frequência Relativa", main="")
lines(x, fteorico, col="red")
graphics.off()
