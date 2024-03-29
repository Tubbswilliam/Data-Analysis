#Time series analysis
data(AirPassengers)
class(AirPassengers)

Start(AirPassengers)#Tells the start of data
end(AirPassengers)#Tells the end of data

frequency(AirPassengers)#Gives the intevals

plot(AirPassengers)
#Fitting a regression line in the data to check for the mean
#variance and covariance->The three should be constant in order
#to carry out time series analysis.
abline(reg = lm(AirPassengers~time(AirPa ssengers)))

#From the above, the time series appears to be non-stationary

#Investigating the components of Time series
#Trend
plot(aggregate(AirPassengers,FUN=mean))
#cycle
cycle(AirPassengers)
boxplot(AirPassengers~cycle(AirPassengers))
#The above code will give us an idea about the seasonality
plot(acf(AirPassengers))#checking the autocorrelation

#In order to get the variances to be constant, we apply a 
#log transformation. Also in order to get the mean to be constant
#we differentiate the time series.
plot(diff(log(AirPassengers)))
#From the above, the data is now set for time series modelling

#ARIMA (p,d,q)
plot(acf(diff(log(AirPassengers))))#To determine q
plot(pacf(diff(log(AirPassengers))))#To determine p

#d is the amount of times you have done differentiation
#in this case d is 1 coz i have differentiated once to get
#the time series stationary.

#Fitting the model
fit<-arima(log(AirPassengers),c(0,1,1),seasonal = list(order=c(0,1,1),period=12))

#predicting for the next 15 years
pred<-predict(fit,n.ahead=15*12)
pred_values=2.718^pred$pred
pred_values #predicted values


