#1
load("data/liver.rda")
library(survival)
liver <- within(liver, st<-Surv(y,d))
fit <- survfit(st~cirrhos,data=liver)
plot(fit,col=c("blue","red"),legend.text=c("no cirrhosis","cirrhosis"))
#2
plot(fit,col=c("blue","red"),legend.text=c("no cirrhosis","cirrhosis"),fun="cumhaz")
plot(fit,col=c("blue","red"),legend.text=c("no cirrhosis","cirrhosis"),legend.pos=c(0,2),fun="cumhaz")
#3
plot(fit,col=c("blue","red"),legend.text=c("no cirrhosis","cirrhosis"),legend.pos=c(0,2),fun="cumhaz",log="y")
#4
m<-coxph(st~cirrhos,data=liver)
m
#5
cox.zph(m)
#6
m<-coxph(st~treat+cirrhos,data=liver)
m
#7
m<-coxph(st~age,data=liver)
m
#8
m<-coxph(st~I(age/10),data=liver)
m
#9
m<-coxph(st~treat+age,data=liver)
m

