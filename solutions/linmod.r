#1
load("data/births.rda")
births <- within(births, gest4<-cut(gestwks,br=c(20,35,37,39,45)))
str(births)
#2
library(Epi)
stat.table(gest4,list(Odds=ratio(lowbw,1-lowbw)),data=births)
#3
m<-glm(lowbw~gest4,fam="binomial",data=births)
exp(coef(m))
#the first level of gest4 is the base line.

#4
m<-glm(lowbw~relevel(gest4,ref=4),fam="binomial",data=births)
exp(coef(m))
ci.lin(m,Exp=T)[,5:7]
#5
m<-glm(lowbw~hyp,fam="binomial",data=births)
exp(coef(m))
#6
m<-glm(lowbw~hyp+gestwks,fam="binomial",data=births)
exp(coef(m))
effx(lowbw,type="binary",expos=factor(hyp),control=gestwks,data=births)
#7
m<-glm(lowbw~hyp+gest4,fam="binomial",data=births)
exp(coef(m))
effx(lowbw,type="binary",expos=factor(hyp),control=gest4,data=births)
#8
load("data/ucb.rda")
head(ucb)
str(ucb)
m<-glm(reject~gender,fam="binomial",weights=freq,data=ucb)
exp(coef(m))
m<-glm(reject~dept/gender,fam="binomial",weights=freq,data=ucb)
exp(coef(m))
ci.lin(m,Exp=T)[,5:7]
m<-glm(reject~gender+dept,fam="binomial",weights=freq,data=ucb)
ci.lin(m,Exp=T)[,5:7]
#8 using effx
effx(reject,type="binary",expos=gender,weights=freq,data=ucb)
effx(reject,type="binary",expos=gender,strata=dept,weights=freq,data=ucb)
effx(reject,type="binary",expos=gender,control=dept,weights=freq,data=ucb)

