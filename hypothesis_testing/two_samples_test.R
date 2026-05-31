library(here)
library(BSDA)
library(EnvStats)

# teste z para duas médias (variâncias conhecidas)
RC <- c(4120, 4050, 3960, 3940, 3890, 3910, 4090, 4120, 4040, 4060, 
        4030, 3920, 4060, 3970, 4030, 4090, 3960, 3970, 4000, 4120)
RO <- c(3720, 3490, 3810, 3540, 3570, 3770, 3640, 3660, 3610, 3740, 
        3610, 3590, 3690, 3740, 3750, 3800, 3680, 3640)

# verificar distribuição normal (ambos os casos)
qqnorm(RC)
qqline(RC, col = "red")
shapiro.test(RC)

qqnorm(RO)
qqline(RO, col = "red")
shapiro.test(RO)

z.test(RC, RO, sigma.x = 71, sigma.y = 82, conf.level = 0.90)


# teste t para duas médias (variâncias desconhecidas)
fibrose.cistica <- c(15.1, 14.2, 16.0, 14.7, 16.5, 13.9, 15.2, 14.8, 15.7, 15.0, 14.5, 15.3, 14.9)
saudaveis <- c(21.0, 20.5, 22.1, 19.8, 20.9, 21.5, 20.2, 21.3, 20.7, 19.5, 21.8)

shapiro.test(fibrose.cistica)
shapiro.test(saudaveis)

var.test(fibrose.cistica, saudaveis)$p.value    # decidir qual teste t usar
t.test(fibrose.cistica, saudaveis, var.equal = FALSE, conf.level = 0.90)


# teste t pareado
Placebo <- c(211, 210, 210, 203, 196, 190, 191, 177, 173, 170, 163)
Hidroclorotiazida <- c(181, 172, 196, 191, 167, 161, 178, 160, 149, 119, 156)

shapiro.test(Placebo)
shapiro.test(Hidroclorotiazida)

t.test(Placebo, Hidroclorotiazida, paired = TRUE, conf.level = 0.99)    # para amostras dependentes


# teste t para duas médias (variâncias iguais)
dados <- read.csv("data/Dieta.csv", sep=";", dec=",")

dietaA <- dados[dados$Dieta == "A", ]
shapiro.test(dietaA$Perda)

dietaB <- dados[dados$Dieta == "B", ]
shapiro.test(dietaB$Perda)

var.test(dados$Perda ~ dados$Dieta)$p.value # para comparar as variâncias

t.test(dados$Perda ~ dados$Dieta, var.equal = TRUE, conf.level = 0.90)

