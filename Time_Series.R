#Time series analysis
data(AirPassengers)
class(AirPassengers)
plot(AirPassengers)
#Fitting a regression line in the data
abline(reg = lm(AirPassengers~time(AirPassengers)))
