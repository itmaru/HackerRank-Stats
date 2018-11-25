# Enter your code here. Read input from STDIN. Print output to STDOUT
# mean = 70 sd = 10
# scored higher than 80
# passed 60
# failed 60


probA <- pnorm(80, mean = 70, sd = 10, lower.tail = FALSE)
probB <- pnorm(60, mean = 70, sd = 10, lower.tail = FALSE)
probC <- pnorm(60, mean = 70, sd = 10)

cat(round(probA * 100), 2))
cat(round(probB * 100), 2))
cat(round(probB * 100), 2))