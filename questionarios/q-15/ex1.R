library(here)

dados <- read.csv("data/shock1.csv", sep=";")

tempo_ini <- dados[dados$Tempo == 1,]
tempo_fim <- dados[dados$Tempo == 2,]

# calcular para ambos os casos
qqnorm(tempo_ini$HR)
qqline(tempo_ini$HR, col="red")
shapiro.test(tempo_ini$HR)

qqnorm(tempo_fim$HR)
qqline(tempo_fim$HR, col="red")
shapiro.test(tempo_fim$HR)

# teste f
t.test(tempo_ini$HR, tempo_fim$HR, paired=TRUE, conf.level=0.90)
