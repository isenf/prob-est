librarY(here)

dados <- read.csv("data/laheart.csv", sep=";", dec=".")

t.test(dados$Colesterol, mu=250, conf.level=0.95)
