#1
load("data/births.rda")
table(births$preterm)
prop.table(table(births$preterm))
#2
with(births, table(preterm,hyp))
tb <- with(births, table(preterm,hyp))
as.data.frame(tb)
#3
library(Epi)
stat.table(list(preterm), mean(bweight), data=births)
stat.table(list("Pre-term"=preterm), list("Mean birth weight"=mean(bweight)), data=births)
stat.table(list("Pre-term"=factor(preterm,labels=c("normal","pre-term"))), list("Mean birth weight"=mean(bweight)), data=births)
#4
stat.table(list(hyp,sex),mean(100*preterm), data=births)
stat.table(list(hyp,sex),mean(100*preterm), data=births, margin=c(TRUE,FALSE))
stat.table(list(hyp,sex),mean(100*preterm), data=births, margin=c(FALSE,TRUE))
#5
births$agegrp <- cut(births$matage, br=seq(20,45,5), right=FALSE)
stat.table(agegrp, list("% pre-term"=mean(100*preterm)), data=births)
#6
stat.table(agegrp, list("Odds"=ratio(preterm,1-preterm)), data=births)


