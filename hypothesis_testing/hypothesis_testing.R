library(here)
library(BSDA)
library(EnvStats)

dados <- read.csv("data/Dieta.csv", sep=";", dec=",")

qqnorm(dados$Perda, ylab = "Quantis Observados", xlab = "Quantis Teóricos")
qqline(dados$Perda, col = "red")

# shapiro wilk -> verifica a normalidade
shapiro.test(dados$Perda)   # retorna um p-valor

# p-valor < a -> rejeita H0

# teste t (variância populacional desconhecida)
t.test(dados$Perda, mu = 20, conf.level = 0.95) # mu: valor hipótese nula


# teste z (variância populacional conhecida)
z.test(dados$Perda, sigma.x = sqrt(72.25), mu = 20, conf.level = 0.95)

# teste qui-quadrado para variância populacional
varTest(dados$Perda, sigma.squared = 72.25, conf.level = 0.90)

# teste qui-quadrado para proporção populacional
tabela <- table(dados$Hipertensao)
prop.test(tabela[1], sum(tabela), p = 0.35, conf.level = 0.90)  # p: valor da hipótese nula

