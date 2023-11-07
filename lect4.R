x <- c(10,20,30,40,50,60,70,80,90,100)

x

x[3]

x[-3]
x<-x[-3]
x


x[3]<-30
x

x[c(3,5,7)]

index<-c(3,5,7,1)
x[index]

rang<-1:3
rang

x[rang]

x[3]<-45
x



x[3]<-99
x

x[3]<-30
x

x<-c(x[1:2],99,x[3:10])

x<-x[-3]
x

x<-c(x[1:2],c(99,999,9999),x[3:10])
x

x<-x[-3:-6]
x


y<-c(TRUE,FALSE,FALSE,TRUE)
y
length(y)

x[y]


x<-c(1,2,3,481,5,6,7,8,9,10)
y<-c(T,F)
x[y]

z <- c(F,T)
x[z]



x <- c(12,15,11,19,21,10,15,13,9,5)


y<- x[x>10]
y


y<- x[x<10]
y


y<- x[(x>=10) & (x<=15)]
y


which(y==11)
which(y==15)
which(y==11 | y==13)

which(y%%2==0)
which(y%%2==1)
y[which(y%%2==1)]

y
10 %in% y
c(9,10) %in% y

1:10 %in% y

c(1:10,15,16) %in% y

y<-c(12,13,14,15,16)
z<-c(-1,-2,-3,0,3,2,1)
e<-c(2,4,6,8,10)
o<-c(1,3,5,7)
n<-c(-1,-2,-3)

any(y%%2==0)
any(y>0)

any(y<0)
all(e%%2==0)
all(e%%2==1)
all(o%%2==1)
all(n<0)
all(n>0)
any(n>0)

any(z<0)

any(z<=0)


all(z<0)

all(z<=0)


x<-c(12,25,36,15,18,10,-10,0)
max(x)
min(x)
mean(x)
sd(x)
var(x)
sum(x)
median(x)
prod(x)
z<-c(1,2,3,4,5)
cumsum(z)
cumprod(z)

summary(x)







