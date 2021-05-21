head(examdata)
#Plotting the data points on a scatter
plot(examdata$Daily_Confirmed,examdata$time_index,ylab="Daily confirmed",xlab="Time index")
#getting the regression equation
model<-lm(examdata$Daily_Confirmed~examdata$time_index)
summary(model)
#Fitting the line
#abline(a=-10.323,b=4.812)
abline(model)

#constructing the confidence interval
confint(model, level=0.99)


