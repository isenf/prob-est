library(here)

dados <- read.csv(here("data/laheart.csv"), sep=";", dec=".")

amp <- diff(range(dados$Colesterol))

aux <- tapply(dados$Colesterol, dados$Status, range)
amp_antes <- diff(aux$'1')
amp_depois <- diff(aux$`2`)
