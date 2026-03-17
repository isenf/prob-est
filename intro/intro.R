# importação com caminho absoluto
setwd("C:/Users/Fabro/Documents/prob-est")

# sep: separador de células e dec: separador casa decimal
dados <- read.csv(file="data\\ac.csv", sep=";", dec=",")


# usando here
library(here)
here()

dados2 <- read.csv(file="data/ac.csv", sep=";")
here("..", "ac.csv")

here("..")
