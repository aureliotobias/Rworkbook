#1
# The variable names are included as the first row of the file
# Columns are separated by spaces
# Missing values are coded as NA except for IQ where they are coded as -99.
#2
fem <- read.table("data/fem.dat", header=TRUE, sep="")
head(fem,10)
fem <- within(fem, IQ[IQ==-99]<-NA)
head(fem,10)
#3
with(fem, summary(IQ))
#4
fem <- read.table("data/fem.dat", sep="")
head(fem)
str(fem)
#5
fem <- read.table("data/fem.dat", sep="",as.is=TRUE)
head(fem)
str(fem)
#6
library(foreign)
fem <- read.dta("data/fem.dta")
head(fem)
str(fem)
fem <- read.dta("data/fem.dta",convert.factors=FALSE)
#7
fem <- read.xport("data/fem.tpt")
#8
fem <- read.table("data/fem-dot.dat", header=TRUE, sep="", na.strings=".")
head(fem,20)




