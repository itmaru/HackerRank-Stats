#cat(format(round(answer,3),nsmall = 3))
x <- 0.88
y <- 1.55

ca <- 160 + (40*(mean(x)+mean(x)^2))
cb <- 128 + (40*(mean(y)+mean(y)^2))

cat(format(round(ca,3),nsmall = 3), sep = "\n")
cat(format(round(cb,3),nsmall = 3))