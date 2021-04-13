# Problem 2

# create vector for which a five number summary will be computed.
w <- c(9,27,15,8,10,2,70,1,4,17,9,44)

# the quantile fn computes a 5-number summary, R documentation shows that
# setting type to 1 will calculate the inverse empirical distribution fn
five_num_summary_quant <- quantile(w, type = 1)

# Problem 4

library(quantmod)

# first we download closing price data for 2012 for the stock with ticker DPZ
getSymbols("DPZ", from = "2012-01-01", to = "2012-12-31")

# as.numeric coerces its argument to be of numeric form if it is not already
dominoes <- as.numeric(Cl(DPZ))

# a histogram and kernel density estimator was demonstrated during lecture,
# we recreate that here as closely as possible.
hist(dominoes, freq = FALSE)
plot(density(dominoes), main = NA)