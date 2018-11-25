#exp(1) = the constant e

#A random variable, X, follows Poisson distribution with mean of 2.5. Find the probability with #which the random variable X is equal to 5.

x <- 5
lambda <- 2.5
answer <- dpois(x, lambda, log = FALSE)
cat(format(round(answer,3),nsmall = 3))