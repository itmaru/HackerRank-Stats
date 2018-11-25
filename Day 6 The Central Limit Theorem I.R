maxWeight <- 9800
cargoLoad <- 49
cargoMean <- 205
cargoStdev <- 15

answer <- pnorm(maxWeight, mean = cargoMean * cargoLoad, sd = cargoStdev * sqrt(cargoLoad))

cat(format(round(answer, 4),nsmall = 4))