library(here)

dados <- read.csv("data/laheart.csv", sep=";", dec=".")

# supor que não siga distribuição normal
wilcox.test(dados$Colesterol[dados$Status == 1], 
            dados$Colesterol[dados$Status == 2], 
            paired = TRUE)
