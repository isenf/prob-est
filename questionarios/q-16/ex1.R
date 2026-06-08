library(here)
library(lmtest)

dados <- read.csv("data/seringueira.csv", sep=";", dec=",")

ANOVA <- aov(dados$Producao~dados$Local)

shapiro.test(ANOVA$res)

bptest(ANOVA)
gqtest(ANOVA) # homocedastico

dwtest(ANOVA) # independente

summary(ANOVA)[[1]][['Pr(>F)']]

TukeyHSD(ANOVA, conf.level = 0.9)
