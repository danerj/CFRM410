library(quantmod)

# collect closing price data for HMS Holdings stock from 2014
getSymbols("HMSY", from = "2014-01-01", to = "2014-12-31")

# as.numeric coerces the data into a numeric format if it is not already
hms <- as.numeric(Cl(HMSY))

# want daily return data specifically
hmsdaily = dailyReturn(Cl(HMSY))
plot(hmsaily)

# collect closing price data for the S&P 500 from 2014 for benchmarking
getSymbols("INX", from = "2014-01-01", to = "2014-12-31")
sp500 <- as.numeric(Cl(INX))
sp500daily = dailyReturn(Cl(INX))
plot(sp500daily)


# for each of the different timespans, create a quantile-quantile plot of the 
# returns data vs a normally distributed sample
# add qqline to assess whether we may note a linear or nonlinear relationship
#qqnorm(IRBT_daily,main = "Normal Q-Q Plot for Daily Returns", 
 #      xlab = "Theoretical Quantiles" , ylab = "Sample Quantiles")
#qqline(IRBT_daily)
