library(here)

dados <- read.csv("data/laheart.csv", sep=";", dec=".")

antes <- dados$Colesterol[dados$Status == 1]
depois <- dados$Colesterol[dados$Status == 2]

# antes da intervenção
png("avaliacao/p3/QQgraph_1.png")
qqnorm(antes, ylab = "Quantis Observados", xlab = "Quantis Teóricos", main="")
qqline(antes, col='red')
graphics.off()

shapiro.test(antes)

# depois da intervenção
png("avaliacao/p3/QQgraph_2.png")
qqnorm(depois, ylab = "Quantis Observados", xlab = "Quantis Teóricos", main="")
qqline(depois, col='red')
graphics.off()

shapiro.test(depois)

# teste-t pareado
t.test(depois, antes, paired = TRUE, conf.level = 0.95)
