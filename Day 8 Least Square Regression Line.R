# # Enter your code here. Read input from STDIN. Print output to STDOUT
# First try
# x <- c(95, 85, 80, 70, 60)
# y <- c(85, 95, 70, 65, 70)
# linearModel <- lm(x ~ y)
# answer <- predict(linearModel, newdata=data.frame(x=80),se.fit=T)
# cat(round(answer[[1]], 3))
# 

#From discussion, helped me identify that I had x and y mixed up in lm() function and also the coef() function which took the lm() data and put into numeric values
# x <- c(95,85,80,70,60)
# y <- c(85,95,70,65,70)
# 
# model2 <- lsfit(x,y)
# model2
# coef_model2 <- coef(model2)
# coef_model2
# 
# out2 <- coef_model2[1] + 80 * coef_model2[2]
# cat (round(out2,3))


x <- c(95,85,80,70,60)
y <- c(85,95,70,65,70)

model <- lm(y ~ x)
coef_model <- coef(model)
out <- coef_model[1] + 80 * coef_model[2]
cat (round(out,3))