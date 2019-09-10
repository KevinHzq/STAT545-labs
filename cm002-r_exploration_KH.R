num <- 5 + 2
num * 2

times <- c(60,40,30,15,20)
times/60

mean(times)

times<30
times>20 & times<50
times>20 | times<50
which(times<30)
sum(times<30) #inline comment

#subset
times[3]
times[-3]
times[c(2,4)]
times[1:4]
times[times>50] <- 50

#NA
times[6] <- NA
mean(times, na.rm = TRUE)

#matrix
str(mtcars)
names(mtcars)
mtcars$mpg

