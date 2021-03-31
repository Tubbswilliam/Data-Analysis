# inputs a temperature in Fahrenheit Fo and 
#converts to Celsius Co. The relationship is Co = 5(Fo - 32)/9.
convert_fahr_to_celsius <- function(x) {
  celsius <- 5*(x-32)/9
  return(celsius)
}
#Examples
convert_fahr_to_celsius(300)
convert_fahr_to_celsius(500)
convert_fahr_to_celsius(700)
convert_fahr_to_celsius(650)

#computes the sum of squares of two numbers.
sum_of_square <- function(x,na.rm = TRUE) {
  n<-length(x)
  soqofx<-var(x) * (length(x) - 1)
  return(soqofx)
}
head(mtcars)
sum_of_square(mtcars$mpg)
sum_of_square(mtcars$disp)
sum_of_square(mtcars$hp)
sum_of_square(mtcars$wt)

#calculates the mean, minimum, maximum, and standard deviation.
msd<-function(x){
  m<-mean(x)
  mi<-min(x)
  ma<-max(x)
  std<-sd(x)
  summary<-c(m,mi,ma,std)
  return(summary)
}
msd(mtcars$mpg)
msd(mtcars$disp)
msd(mtcars$hp)
msd(mtcars$wt)
#creates a histogram of the raw dataset 
#and a histogram of the log-transformed dataset.
histograms<-function(x){
  #log transform x
  logx<-log(x)
  par(mfrow=c(1,2))
  hist(x)
  hist(logx)
}
histograms(mtcars$mpg)
histograms(mtcars$disp)
histograms(mtcars$hp)
histograms(mtcars$wt)
#R function of your own
#The function below will output the variance of a number
variance <- function(x, na.rm = TRUE) {
  n <- length(x)
  m <- mean(x, na.rm = TRUE)
  sq_err <- (x - m)^2
  sum(sq_err) / (n - 1)
}
variance(mtcars$mpg)
variance(mtcars$disp)
variance(mtcars$hp)
variance(mtcars$wt)