library(here)
library(BSDA)
library(EnvStats)

dados <- read.csv("data/Dieta.csv", sep=";", dec=",")

dietaA <- dados[dados$Dieta == 'A',]

# gráfico quantil-quantil -> comparar os dados com a distribuição normal teórica
qqnorm(dietaA$Perda, ylab = "Quantis Observados", xlab = "Quantis Teóricos")
qqline(dietaA$Perda, col = "red")


# intervalo de confiança para a média (variância populacional desconhecida)
t.test(dietaA$Perda, conf.level = 0.95)$conf.int    # teste t
# output: 9.692784 12.386816


# intervalo de confiança para a média (variância populacional conhecida)
z.test(dietaA$Perda, sigma.x = 8.5, conf.level = 0.95)$conf.int # teste z
# output: 8.683763 13.395837


# intervalo de confiança para a variância
varTest(dietaA$Perda, conf.level=0.95)$conf.int
# output: 15.67571 34.88479


# intervalo de confiança para a proporção populacional
tabela <- table(dietaA$Hipertensao)
prop.test(tabela[1], sum(tabela), conf.level = 0.95)$conf.int
# output: 0.07637956 0.29660537
