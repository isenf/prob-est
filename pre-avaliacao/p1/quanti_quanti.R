library(here)

dados <- read.csv("data/cancer.csv", sep=";")

png("pre-av/p1/q3_plot.png")
plot(dados$Idade, dados$Tempo, xlab="idade (anos)", ylab="tempo (dias)")
graphics.off()

corr_p = cor(dados$Idade, dados$Tempo, method="pearson")
corr_s = cor(dados$Idade, dados$Tempo, method="spearman")
corr_k = cor(dados$Idade, dados$Tempo, method="kendal")

cat(corr_p, corr_s, corr_k)
