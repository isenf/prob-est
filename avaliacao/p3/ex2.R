library(here)

dados <- read.csv("data/laheart.csv", sep=";", dec=".")

# dist normal para colesterol
png("avaliacao/p3/QQgraph_col.png")
qqnorm(dados$Colesterol, ylab = "Quantis Observados", xlab = "Quantis Teóricos", main="")
qqline(dados$Colesterol, col='red')
graphics.off()

shapiro.test(dados$Colesterol)  # não segue dist normal

# dist normal para peso
png("avaliacao/p3/QQgraph_peso.png")
qqnorm(dados$Peso, ylab = "Quantis Observados", xlab = "Quantis Teóricos", main="")
qqline(dados$Peso, col='red')
graphics.off()

shapiro.test(dados$Peso)
