library(here)

dados <- read.csv("data/cgd3.csv", sep=";", dec=".")

# Verificar se as distribuições exponencial ou normal se ajustam bem a variável idade do paciente, 
# verificar esses ajustes globalmente e separado por Tratamento

# idade no Tratamento 2
idade_trat2 <- dados$Idade[dados$Tratamento == 2]

png("avaliacao/p2/plots/trat2_hist.png")
hist(idade_trat2, ylab="Frequência absoluta", xlab="Idade no Tratamento 2", main="")
graphics.off()

# distribuição normal

desvio <- sd(idade_trat2)
x <- seq(min(idade_trat2), max(idade_trat2), by=0.001)
fteorico <- dnorm(x, mean=media, sd=desvio)

png("avaliacao/p2/plots/norm_trat2_hist.png")
hist(idade_trat2, freq=F, xlab="Idade do Paciente (anos) no Tratamento 2", ylab="Frequência Relativa", main="", ylim=c(0, 0.06))
lines(x, fteorico, col="red")
graphics.off()

png("avaliacao/p2/plots/norm_trat2_qqnorm.png")
qqnorm(idade_trat2, ylab="Quantis observaados", xlab="Quantis Teóricos", main="")
qqline(idade_trat2, col="red")
graphics.off()

# distribuição exponencial
x <- seq(min(idade_trat2), max(idade_trat2), by=1)
fteorico <- dexp(x, rate=1/media)
png("avaliacao/p2/plots/exp_trat2.png")
hist(idade_trat2, freq=F, xlab="Idade do Paciente (anos)", ylab="Frequência Relativa", main="")
lines(x, fteorico, col="red")
graphics.off()

