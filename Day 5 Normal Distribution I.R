#In a certain plant, the time taken to assemble a car is a random variable, X, having a normal distribution with a mean of 20 hours and a standard deviation of 2 hours. What is the probability that a car can be assembled at this plant in:

#Less than 19.5  hours?
#Between 20 and 22  hours? 


probA <- pnorm(19.5, mean = 20, sd = 2)
probB <- (pnorm(22, mean = 20, sd = 2) - pnorm(20, mean = 20, sd = 2))

cat(round(probA, 3), sep = "\n")
cat(round(probB, 3))