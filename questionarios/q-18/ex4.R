library(here)

dados <- read.csv("data/lowbwt3.csv", sep=";", dec=",")

# parametricamente: regressão logística
# não-parametricamente: chi-squared
chisq.test(table(dados$HT, dados$LOW))
