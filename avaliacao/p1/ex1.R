library(here)

dados <- read.csv("data/ac.csv", sep=";", dec=",")

# A circunferência abdominal está correlacionada com a idade gestacional

corr_p <- cor(dados$IdadeG, dados$AbdCirc, method="pearson")
corr_s <- cor(dados$IdadeG, dados$AbdCirc, method="spearman")
corr_k <- cor(dados$IdadeG, dados$AbdCirc, method="kendal")

cat("Correlação\nPearson:", corr_p, "\nSpearman:", corr_s, "\nKendal:", corr_k)

png("avaliacao/p1/ex1_plot.png")
plot(dados$IdadeG~dados$AbdCirc, xlab="Circunferência Abdominal (cm)", ylab="Idade Gestacional (semanas)")
graphics.off()

