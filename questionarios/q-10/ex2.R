library(here)
library(BSDA)

dados <- read.csv("data/lowbwt1.csv", sep=";")

z.test(dados$AGE, sigma.x=15, conf.level=0.9)$conf.int
