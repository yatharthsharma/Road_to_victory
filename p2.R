library(sqldf)
library(rpart)


datavar <-read.csv('usopen_men.csv')
datavar$result <- paste(datavar$player1,datavar$win)
str(datavar)


fit <- rpart( datavar$win~ datavar$firstServe1 + datavar$ace1 + datavar$double1,
              method="class", data=datavar)
