library(here)

dados <- read.csv("data/Dieta.csv", sep=";", dec=",")

# pressuposto: seguir distribuição normal
qqnorm(dados$Perda)
qqline(dados$Perda, col="red")
shapiro.test(dados$Perda)

qqnorm(dados$Idade)
qqline(dados$Idade, col="red")
shapiro.test(dados$Idade)

cor.test(dados$Perda, dados$Idade, method="Pearson", conf.level=0.9)


# não paramétricos
peso <- c(56, 58, 70, 72, 81, 92, 95, 100, 104, 112)
glicemia <- c(71, 78, 79, 85, 85, 102, 110, 176, 181, 318)

cor.test(peso, glicemia, method="spearman")
cor.test(peso, glicemia, method="kendal")
# se p-valor != 0, as variáveis estão correlacionadas
