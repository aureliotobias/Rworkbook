#1
log(10)
log10(10)
log2(10)
#2
sqrt(3^2+4^2)
#3
v <- c(1,01,2,-2)
v
#4
v[2]
v[-2]
#5
v[v>0]
which(v>0)
#6
v<-c(0:3,seq(5,75,5))
v
length(v)
#7
v<-c(v,80)
#8
v<-c(v[1:4],4,v[5:length(v)])
#9
rep(c("A","B"),20)
#10
v<-rnorm(100)
length(v)
mean(v)
var(v)
sum(v)/length(v)
sum((v-mean(v))^2)/(length(v)-1)
#11
name <- list("Michael","Hills")
str(name)
#12
name[[1]]
name[[2]]
#13
name <- list(first="Michael",second="Hills")
str(name)
#14
name$first
name$second
#15
myname <- name
rm(name)
#16
rep(c("A","B"),20)
#17
as.Date("2000-12-25")
as.numeric(as.Date("2000-12-25"))
#18
as.Date("25/12/2000","%d/%m/%Y")
#19
as.Date("25dec2000","%d%b%Y")
#20
as.numeric(as.Date("1934-06-07"))
#21
library(Epi)
cal.yr("2008-10-6")





