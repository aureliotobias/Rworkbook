births<-read.table("data/births.csv",head=T,sep=",")
births <- within(births,
hyp <- factor(hyp,labels=c("normal","hyper")),
sex <- factor(sex,labels=c("M","F")),
agegrp <- cut(matage,breaks=c(20,25,30,35,40,45),right=FALSE),
gest4 <- cut(gestwks,breaks=c(20,35,37,39,45),right=FALSE))

