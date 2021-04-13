#### Problem 2 ####

# create a vector with points at which the cos & sin function will be evaluated at.
thetas <- seq(0,pi,length = 181)
x <- cos(thetas)
y <- sin(thetas)

# plot sin and cos on the same axes.
plot(x,y, main = expression(paste("Relationship Between sin(",
                  theta, ") and cos(",theta,"),0<",theta,"<",pi)),
                  ylab = expression(paste("y=sin(",theta,")")),
                  xlab = expression(paste("x=cos(",theta,")")),
                  col = "blue",ylim = c(0,1.2))

# find the numerical relationship between sin and cos, we find that it is effectively 0.
correlation_xy <- cor(x,y)

#### Problem 3 ####

# use the quantmod package to access financial data
library(quantmod)

# collect closing price data for the company with ticker IRBT from the
# beginnin of 2010 to the end of 2014.
getSymbols("IRBT", from = "2010-01-01", to = "2014-12-31")

# as.numeric coerces the data into a numeric format if it is not already
iRobot <- as.numeric(Cl(IRBT))

# calculate the return based on closing prices depending on several timespans
IRBT_daily = dailyReturn(Cl(IRBT))
IRBT_weekly = weeklyReturn(Cl(IRBT))
IRBT_monthly = monthlyReturn(Cl(IRBT))
IRBT_quarterly = quarterlyReturn(Cl(IRBT))

# adjust the graphical parameters to fit 4 plots in one figure
par(mfrow=c(2,2))
par(mar=c(2,2,2,2))

# for each of the different timespans, create a quantile-quantile plot of the 
# returns data vs a normally distributed sample
# add qqline to assess whether we may note a linear or nonlinear relationship
qqnorm(IRBT_daily,main = "Normal Q-Q Plot for Daily Returns", 
       xlab = "Theoretical Quantiles" , ylab = "Sample Quantiles")
qqline(IRBT_daily)
qqnorm(IRBT_weekly,main = "Normal Q-Q Plot for Weekly Returns", 
       xlab = "Theoretical Quantiles" , ylab = "Sample Quantiles")
qqline(IRBT_weekly)
qqnorm(IRBT_monthly,main = "Normal Q-Q Plot for Monthly Returns",
       xlab = "Theoretical Quantiles" , ylab = "Sample Quantiles")
qqline(IRBT_monthly)
qqnorm(IRBT_quarterly,main = "Normal Q-Q Plot for Quarterly Returns",
       xlab = "Theoretical Quantiles" , ylab = "Sample Quantiles")
qqline(IRBT_quarterly)