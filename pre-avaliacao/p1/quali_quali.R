library(here)

dados <- read.csv("data/cancer.csv", sep=";")

tab_abs <- table(dados$Grau, dados$Local)
tab_rel <- prop.table(tab_abs, 1)

tab_rel*100

png("pre-av/p1/barplot.png")
barplot(tab_rel, beside=T, col=c("cyan", "purple", "magenta"), xlab="Local", ylab="Proporção", names=c("Local A", "Local B", "Local C"), ylim=c(0, 0.7))
legend("topright", legend=c("Grau A", "Grau B", "Grau C"), fill=c("cyan", "purple", "magenta"), bty="n")
graphics.off()
