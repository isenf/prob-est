library(here)
library(agricolae)
library(lmtest)

# amostras dependentes
dados1 <- read.csv("data/pareado.csv", sep=";", dec=",")

qqnorm(dados1[dados1$Intervencao=="Antes",]$Peso)
qqline(dados1[dados1$Intervencao=="Antes",]$Peso, col="red")

qqnorm(dados1[dados1$Intervencao=="Depois",]$Peso)
qqline(dados1[dados1$Intervencao=="Depois",]$Peso, col="red")

shapiro.test(dados1[dados1$Intervencao=="Antes",]$Peso)
shapiro.test(dados1[dados1$Intervencao=="Depois",]$Peso)     # não segue a distribuição normal

# teste de Wilcoxon
wilcox.test(dados1$Peso[dados1$Intervencao == "Antes"], 
            dados1$Peso[dados1$Intervencao == "Depois"], 
            paired = TRUE)  # pareados, dependentes


# amostras independentes
dados2 <- read.csv("data/independente.csv", sep=";", dec=",")

qqnorm(dados2$Perda[dados2$Dieta == 'A'])
qqline(dados2$Perda[dados2$Dieta == 'A'], col="red")

qqnorm(dados2$Perda[dados2$Dieta == 'B'])
qqline(dados2$Perda[dados2$Dieta == 'B'], col="red")

shapiro.test(dados2$Perda[dados2$Dieta == 'A'])
shapiro.test(dados2$Perda[dados2$Dieta == 'B'])

# teste de Wilcoxon-Mann-Whitney
wilcox.test(dados2$Perda~dados2$Dieta)  # não pareado, independentes


# mais de duas amostras
dados3 <- read.csv("data/kruskal.csv", sep=";")

ANOVA <- aov(dados3$Altura~dados3$Adubo)

shapiro.test(ANOVA$res) # distribuição normal

bptest(ANOVA)
gqtest(ANOVA) # não homocedastico

dwtest(ANOVA) # independencia

# teste de Kruskal-Wallis
K.test <- kruskal(dados3$Altura, dados3$Adubo)
K.test$statistics   # para p-valor
K.test$group    # para médias
