#1
load("data/births.rda")
attach(births)
#2
boxplot(matage)
boxplot(matage,col="grey")
#3
boxplot(matage~factor(hyp))
boxplot(matage~factor(hyp),col=c("blue","red"))
boxplot(matage~factor(hyp,labels=c("normal","hyper")),col=c("blue","red"))
boxplot(matage~factor(hyp,labels=c("normal","hyper")),col=c("blue","red"),main="Maternal age")
#4
hist(matage, xlim=c(20,45), br=seq(20,45,5), col="grey")
#5
plot(ecdf(matage))
plot(ecdf(matage),verticals=TRUE, pch=".")
#6
plot(ecdf(matage[hyp==0]),verticals=TRUE, pch=".")
plot(ecdf(matage[hyp==1]),verticals=TRUE, pch=".",add=TRUE)
#7
detach(births)



