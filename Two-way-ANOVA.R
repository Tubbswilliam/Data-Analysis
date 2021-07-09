library(BHH2)
head(poison.data)
#Two-way ANOVA
model<-aov(y~poison+treat,poison.data)
summary(model)
######Post-Hoc Analysis
TukeyHSD(model)
