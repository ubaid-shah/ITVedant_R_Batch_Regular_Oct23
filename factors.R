x<- c(4,4,6,5,6,6,6,5,4,4,5,5,6,5,4,5,5)
f<- factor(x)
f

y<-c("a","b","a","c","d","a","b","d","a","a","a")
f<-factor(y)
f


levels(f)
levels(f)[2]

x<- c(4,4,6,5,6,6,6,5,4,4,5,5,6,5,4,5,5)
f<- factor(x)
f<-factor(x,levels=c(4,5,6),labels =c("Anil","Sunil","Kamil") )
f

z<- factor(x,labels =c("Anita","Sunita","Kaya") )
z

f<-factor(x,levels=c(4,5,6),labels =c("Anil","Sunil","Kamil") )
f

# count
table(z)


f[3]
length(f)

length(levels(f))




sal<-c(25000,65000,45000,98000,25000,65000,28000,55000)
cat<-factor(c('W','MM','W','M','W','MM','W','W'))  
sal  
cat  

li<-split(sal,cat)  
typeof(li)
li$M


s<-rbind(sapply(li,max),sapply(li,min),sapply(li,mean),table(cat))

summary(li$MM)[c("Min.","Max.","Mean")]

rownames(s)<-c('Max','Min','Mean','Count')
s




x<-tapply(sal,cat,max)
x
y<-tapply(sal,cat,min)
y
z<-tapply(sal, cat, mean)
z


by(sal,cat,max)


x<- c(1,2,1,2,3,1,2,2,3,3,2,3)
f<-ordered(x,levels=c(1,2,3),labels=c("Low","Middle","High"))

f
