#libraries to use
library(dplyr)
library(tidyverse)
library(tseries)
library(rugarch)
library(xts)
library(fGarch)

#Next we load the data
dt<- read.csv("C:/Users/User/Downloads/1628660813-gmsp500.txt", sep="")
head(dt)

plot.ts(dt$gm)

#Plotting the data in acf and pacf
forecast::tsdisplay(dt$gm)

#Performing the Ljung-Box test
Box.test(dt$gm, lag = 10, type = "Ljung-Box")$p.value
Box.test(dt$gm, lag = 20, type = "Ljung-Box")$p.value
Box.test(dt$gm, lag = 25, type = "Ljung-Box")$p.value

#calculating the volatility
mdl <- lm(diff(dt$gm) ~ 1)
u <- residuals(mdl)
u2<- u^2
plot.ts(data.frame(diff(dt$gm), u2),
        main = "returns and volatility")

#############################################################
mdl.auto <- auto.arima(diff(dt$gm))
matrix(names(mdl.auto$coef), nrow = 2, byrow = TRUE)
############################################################
mdl.arch.final <- garchFit(~ arma(3, 2) + garch(1, 1),
                           diff(dt$gm),
                           trace = FALSE)
mdl.arch.final@fit$matcoef
mdl.arch.final@fit$ics
