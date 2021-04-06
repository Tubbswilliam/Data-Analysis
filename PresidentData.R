data<-Presidents_in_USA
head(data)
str(data)
#########################################
boxplot(data$`Age  at inaugeration`)
########################################
boxplot(data$Year)
hist(data$Year)

boxplot(data$`#children`)
hist(data$`#children`)
#############################################
boxplot(data$`Age of death`)
hist(data$`Age of death`)
###########################################
table(data$`Political Party`)

table(data$College)
table(data$Religion)

table(data$Occupation)
#############################################33
plot(data$`Age  at inaugeration`,data$`#children`)

cor(data$`Age  at inaugeration`,data$`#children`)

###Additional insights
Served<-data$`Age of death`-data$`Age  at inaugeration`
hist(Served)
summary(Served)
