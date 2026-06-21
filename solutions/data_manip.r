#1
load("data/births.rda")
myfun <- function(x) {
return(c(sum(!is.na(x)),mean(x,na.rm=TRUE),sd(x,na.rm=T)))
}
z<-sapply(births,FUN=myfun)
t(z)
#1 with names
myfun <- function(x) {
return(list("non-missing"=sum(!is.na(x)),mean=mean(x,na.rm=TRUE),sd=sd(x,na.rm=T)))
}
z<-sapply(births,FUN=myfun)
t(z)
#2
mbirths<-melt(births,id.var=c("sex","hyp"),measure.var=c("bweight","gestwks","matage"))
cast(mbirths,hyp~variable,median,na.rm=TRUE)
#3
load("data/fevlong.rda")
o<-with(fevlong,order(grp,month))
fevlong <- fevlong[o,]
head(fevlong,10)
head(fevlong,30)
#4
library(reshape)
mfev<-melt(fevlong,id.var=c("id","month","grp"),measure.var="fev")
cfev<-cast(mfev,grp+month~variable,mean,na.rm=TRUE)
head(cfev)
plot(fev~month,type="b",data=subset(cfev,grp==1))
plot(fev~month,type="b",data=subset(cfev,grp==2))
plot(fev~month,type="b",data=subset(cfev,grp==3))
#4 all on same plot
library(lattice)
xyplot(fev~month|grp,type="b",data=cfev)
#5
first <- function(x) x[1]
fev1 <- cast(mfev,id+grp~variable,first)
boxplot(fev~grp,data=fev1)
#6
last <- function(x)x[length(x)]
fevlast <- cast(mfev,id+grp~variable,last)
boxplot(fev~grp,data=fevlast)


