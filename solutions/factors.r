#1
load("data/births.rda")
sexf <- factor(births$sex)
ls()
births$sexf <- factor(births$sex)
names(births)
#2
births$sexf <- factor(births$sex, labels=c("male","female"))
births$sexf
#3
factor(births$sex, labels=c("male","female"))
#4
births<-within(births, gest4 <- cut(gestwks, br=c(20,35,37,39,45), right=FALSE))
str(births)
#5
births<-within(births, gest5 <- cut(gestwks, br=5, right=FALSE))
str(births)
#6
births<-within(births, gest5 <- cut(gestwks, br=5, right=FALSE,labels=FALSE))
str(births)
births$gest5

