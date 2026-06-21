load("data/births.rda")
#1
births[7,"gestwks"]
#2
births[7,]
#3
births[1:10,"gestwks"]
#4
early <- births$gestwks<30
births <- within(births, early <- gestwks<30)
#5
with(births, id[gestwks<30])
subset(births,gestwks<30)$id
#6
df1 <- subset(births, hyp==1)
head(df1)
#7
df2 <- subset(births, !is.na(gestwks))
head(births)
head(df2)
#8
df3 <- na.omit(births)
head(df3)
#9
births <- within(births, gender <- c("M","F")[sex])
head(births)




