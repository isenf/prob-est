library(here)
library(lmtest)

dados <- read.csv("data/anova.csv", sep=";", dec=",")

# aov -> analysis of values
ANOVA <- aov(dados$Durabilidade~dados$Tipo) # constroi o modelo de anova

# normalidade, independência, homocedasticidade
shapiro.test(ANOVA$res) # distribuição normal

bptest(ANOVA)
gqtest(ANOVA) # homocedastico

dwtest(ANOVA) # independente identicamente distribuido

summary(ANOVA)  # tabela ANOVA completa
summary(ANOVA)[[1]][['Pr(>F)']]

TukeyHSD(ANOVA, conf.level = 0.9)

