i <- sample(100,16,replace = TRUE)
i
length(i)
m<- matrix(i,ncol = 4,byrow = TRUE)
m

m[2,]
m[2,3]
m[3,4]
m[1:2,3]

m[1:2,3:4]

m[c(1,3),c(2,4)]
m


m[m>50]

m[m<50]

m[m>50 & m<70]

m[m==63]

which(m>50 & m<70)
m


m[2]<-100
m


m[2,3]<-200
m

m[4,]<-50
m

m[1:3,]<-150
m

m[c(1,3)]<-c(111,333)
m


m[1,2:4]<-c(250,350,450)
m


n<-matrix(seq(1,16),nrow = 4)
n



n[1:4,1:4]<-sample(400:500,16)

n

n<- n[-2,]
n
n<-n[,-3]
n


b<-matrix(1:36,ncol=6)
b

b<-b[c(-2,-4),c(-3,-5)]
b


max(b)


min(b)



mean(b)

which(b==max(b))


which(b==min(b))




which(b==min(b[2,]))



which(b==max(b[,3]))


a<-c(1,2,3)
b<-c(9,8,7)
c<-c(12,14,17)

d<-cbind(a,b,c)
d

r<-rbind(a,b,c)
r


z<-rbind(c(200,300,400),c(500,600))
z

# 1 is for row and 2 is for column
apply(z,1,sum)

apply(z,2,sum)

apply(z,1,min)

apply(z,1,max)


apply(z,1,prod)


apply(z,1,sqrt)
z

apply(z,2,sqrt)

v<-matrix(1:12,ncol=4)
v


sweep(v,1,c(10,10,20),'+')


sweep(v,2,c(10,10,20,30),'+')

sweep(v,2,c(10,10,20,30),'/')


round(sweep(v,2,c(2,3,0.5,1/3),'^'))

round(sweep(v,2,c(2,3,1,1),'^'))



a<-matrix(1:9,ncol = 3)
b<-matrix(10:18,ncol = 3)
b

a+b
a-b
a*b
a%*%b



det(a)
solve(b)
solve(matrix(sample(1:100,9),ncol=3))

2x+y−2z=−1
3x−3y−z=5
x−2y+3z=6


A<-rbind(c(2,1,-2),c(3,-3,-1),c(1,-2,3))
B<-c(-1,5,6)
solve(A,B)


