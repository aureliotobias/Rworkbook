#1
load("data/births.rda")
attach(births)
#2
boxplot(matage~factor(hyp,labels=c("normal","hyper")),col=c("blue","red"),main="Maternal age")
legend(1.3,42,legend=c("normal","hyper"),fill=c("blue","red"))
#3
plot(bweight~matage)
abline(h=mean(bweight))
#4
plot(bweight~gestwks, type="n", ylim=c(0,5000))
points(gestwks[bweight<2000], bweight[bweight<2000],col="blue")
points(gestwks[bweight>=2000], bweight[bweight>=2000],col="red")
legend(25,4000,legend=c("low bw","normal bw"),pch=1,col=c("blue","red"))
#5
detach(births)
