library(BHH2)
library(ggplot2)
library(car)
dt<-poison.data
head(dt)
#Description about the dataset
str(dt)

#Removing the variable called treatment from the dataset
#We can use a subset function
dt<-dt[-2]
#To confirm that the treatment variable has been dropped
head(dt)

#Poison variable as an ordered labelled variable
dt$poison<-factor(dt$poison,ordered = TRUE)
str(dt)
#Testing for ANOVA assumptions
#levene test
leveneTest(y~poison,dt)
#
bartlett.test(y~poison,dt)

#plotting a boxplot
ggplot(dt, aes(x=poison, y=y, fill=poison,)) +
  geom_boxplot()

#Conducting the ANOVA test
ANOVA_test<-aov(y~poison, data = dt)
summary(ANOVA_test)
#test for normality
aov_residuals<-residuals(object = ANOVA_test)
shapiro.test(x=aov_residuals)
