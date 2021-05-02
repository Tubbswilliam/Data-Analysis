DelakiDiet <- read_excel("C:/Users/User/Desktop/#100/DelakiDiet.xlsx")
head(DelakiDiet)
#####################################
attach(DelakiDiet)
#########Q-Q plot####################
qqplot(Diet1,Diet2,col='green', main="Q-Q plot")

#########Paired t-test################
t.test(Diet1,Diet2,conf.level = 0.9,paired = T)
