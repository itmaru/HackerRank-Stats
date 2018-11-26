# Sample input
# 
# 2 7
# 0.18 0.89 109.85
# 1.0 0.26 155.72
# 0.92 0.11 137.66
# 0.07 0.37 76.17
# 0.85 0.16 139.75
# 0.99 0.41 162.6
# 0.87 0.47 151.77
# 4
# 0.49 0.18
# 0.57 0.83
# 0.56 0.64
# 0.76 0.18

# #Solution 1
# data<- scan("/dev/stdin")
# m <- data[1]
# n <- data[2]
# q <- data[(m+1)*n+3]
# 
# training <- matrix(data[c(3:(n*(m+1)+2))],nrow = n, ncol = (m+1),byrow = T)
# new <- matrix(data[c(((m+1)*n+4):length(data))], nrow = q, ncol = m,byrow = T)
# 
# y <- training[,(m+1)]
# x <- training[,1:m]
# model <- lm (formula=y~x)
# b <- matrix(coef(model),byrow=F)
# a <- matrix(1, nrow = q, ncol =1)
# newdata <- cbind(a,new)
# out <- newdata %*% b  
# cat(round(out,2),sep = '\n')

# #Solution 2
# library(dplyr)
# 
# f <- file("stdin")
# on.exit(close(f))
# # Get data from input (the hardest part!)
# T <- readLines(f) %>%
#   strsplit(" ") %>%
#   lapply(as.numeric)
# m <- T[[1]][1]; n <- T[[1]][2]
# train <- T[2:(2+n-1)]
# train <- data.frame(t(data.frame(train)))
# q <- T[[2+n]][1]
# test <- T[(2+n+1):(2+n+q)]
# test <- data.frame(t(data.frame(test)))
# 
# # Do the modelling
# formula <- as.formula(paste(tail(names(train), 1), "~ ."))
# model <- lm(formula, train)
# predict(model,test) %>%
#   round(2) %>%
#   format(nsmall = 2) %>%
#   write(stdout())