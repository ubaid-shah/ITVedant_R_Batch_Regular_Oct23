# vectors

x<-c(1,2,3)
x

typeof(x)
class(x)

y<-c('1','2','3')
y
typeof(y)
class(y)

y<-as.integer(y)
y


z<-c('Ubaid','Shah',8,'M')
z

typeof(z)


L<-c(TRUE,FALSE,T,T,F)
L


typeof((L))
class(L)


x<-1:10
x

n<-2

r<- 1:10-n
r

s<- 1:(10-n)
s


n1 <- 10

b<-n1:1
b

x<- n1*2:-1
x

3*6:-5


d<-c(1:10,5)
d


c(1:12,5:-1)


typeof(d)
class(d)


seq(from=20,length=6)

seq(from=100,to=200)

seq(2,5,by=0.5)

seq(3,30,3)
seq(30,3,-3)


seq(from=1,to=10,by=1,length=6)

v<-seq(from=1,to=1000000000)

seq(-5,5,length=9)
length(v)




x<-sample(1:20,25)
x

x<-sample(1:20,25)

length(which(x==15))


r<-rnorm(6)
mean(r)
r<-rnorm(6,mean = 3,sd=1.5)
r

r<-rnorm(6,sd=1.5)
r

r<-rnorm(6,mean=1.5)
r

set.seed(0)
r<-sample(6)
r



x<-c(1,2,3,4,5,6,7)
y<-c(4,1,5,6)
z<-x%/%y
z
