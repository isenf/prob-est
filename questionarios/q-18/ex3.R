library(here)

dados <- read.csv("data/cgd1.csv", sep=";", dec=".")

# supor que não siga a distribuição normal
wilcox.test(dados$Tempo~dados$Tratamento)
