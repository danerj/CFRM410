#### Problem 4 ####

# plotting for lambda = 4

x <- seq(0, 10, length.out=1000)
lambda <- 4
y <- lambda*exp(-lambda*x)
plot(x,y, type = "l",ylab = "Probability", 
     main = "Exponential Distribution for Parameter 4")