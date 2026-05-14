library(here)
library(BSDA)

dados <- read.csv(here("data/shock2.csv"), sep=";", dec=",")

t.test(dados$PVI, conf.level=0.95)$conf.int
