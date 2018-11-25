maxTickets <- 250
students <- 100
ticketsPerStudent <- 2.4
ticketStdev <- 2

answer <- pnorm(maxTickets, mean = ticketsPerStudent * students, sd = ticketStdev * sqrt(students))

cat(format(round(answer, 4),nsmall = 4))