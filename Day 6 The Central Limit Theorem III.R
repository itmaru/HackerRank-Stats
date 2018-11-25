sampleN <- 100
sampleMean <- 500
sampleStdev <- 80
sampleInterval <- 0.95
sampleZScore <- 1.96

stdevX <- sampleStdev / sqrt(sampleN)
lowerBound <- sampleMean - (sampleZScore *stdevX)
upperBound <- sampleMean + (sampleZScore *stdevX)

cat(format(round(lowerBound, 2),nsmall = 2), sep = "\n")
cat(format(round(upperBound, 2),nsmall = 2))

# answer <- pnorm(maxTickets, mean = ticketsPerStudent * students, sd = ticketStdev * sqrt(students))

# answer <- qnorm(c(0.025,0.975), 500,8)
# 
# 

# meanX <- 500 stdevX <- 80/ sqrt(100)
# 
# ConfidenceInteval <- function(mean,variance){ lowerBound <- mean - (1.96*stdevX) upperBound <- mean + (1.96*stdevX) cat(lowerBound, "\n") cat(round(upperBound,2),"\n") }
# 
# ConfidenceInteval(meanX,stdevX)