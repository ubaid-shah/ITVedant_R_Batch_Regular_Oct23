sal <- c(3500,1800,2400,NA,2900)
sal
typeof(sal)
class(sal)
max(sal)

min(sal)

sal2<-na.omit(sal)
sal2
max(sal2)

print(sal2)

sal2<-sal2[1:length(sal2)]
sal2


is.na(sal)
!is.na(sal)

sal3<-sal[!is.na(sal)]
sal3

is.character(sal)

x<-32L
typeof(x)


x<-c(15,9,12,18,16,17,0,1,5)
sort(x)
sort(x,decreasing = TRUE)


x

ifelse(x>10,"High","Low")

ifelse(x%%2==0,"even","odd")

ifelse(x%%2==0,x^2,x)

y<-c(12,16,15,14,-10,-2,-3,55,-7,-49,81)

ifelse(y<0,0,y)


ifelse(y%%2==1,abs(y),y)

ifelse(y<0 & y%%2!=0,abs(y),y)

ifelse(y%%2==1,sqrt(abs(y)),y)



round(13.9)
round(13.5)
round(13.4)
round(15.33333)
round(15.33333,2)

ifelse(y%%2==1,round(sqrt(abs(y)),2),y)


floor(97.933)
ceiling(97.933)
ceiling(114.3)
ceiling(160.5)
ceiling(160.00006)
floor(99.999999)










