# Enter your code here. Read input from STDIN. Print output to STDOUT

con <- file('stdin', open = 'r')
rawData <- readLines(con)

FuncCleanData <- function(string){
  return(as.numeric(unlist(strsplit(string, " "))))
}

cleanData <- FuncCleanData(rawData)
x <- cleanData[2:11]
y <- cleanData[12:21]

answer <- cor(x, y, method = "pearson")
cat(format(round(answer, 3),nsmall = 3))