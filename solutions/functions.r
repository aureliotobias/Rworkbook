#1
area <- function(r) pi*r*r
area(1)
area(2)
#2
area <- function(x,radius=TRUE) {
if(radius) return(pi*x*x)
else return(pi*x*x/4)
}
#3
first <- function(x) x[1]
#4
last <- function(x) x[length(x)]
#5
change <- function(x) x[length(x)]-x[1]
#6
x<-c(1,3,6,8)
first(x)
last(x)
change(x)

