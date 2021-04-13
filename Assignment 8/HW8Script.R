
# problem 2
library(quantmod)
getSymbols("B", from = "2012-01-01", to = "2012-12-31") 
daily <- as.numeric(dailyReturn(Cl(B)))[-1]
library(MASS)
theta = fitdistr(daily, "t", start=list(df=2))

# I cannot find any resources online that show how to use this
# function in the way we are asked to. I used what I could find,
# but this does not give degrees of freedom so I cannot do the 
# next part.
