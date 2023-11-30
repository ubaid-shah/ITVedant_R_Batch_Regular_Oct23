x<-1:10
y<- sample(20:50,10)
df<-data.frame(x,y)
df
View(df)

z<-c('a','b','c','d','e','f','g','h','i','j')
w<-c(TRUE,FALSE,FALSE,TRUE,TRUE,TRUE,FALSE,TRUE,TRUE,TRUE)

df<-data.frame(x,y,z,w)
df
 View(df)
dim(df) 
nrow(df)
ncol(df)

write.csv(df,file='example.csv')

df<- read_csv('C:\\Users\\admin\\Documents\\Ubaid R\\bank-marketing.csv')
View(df)
?read_csv
getwd()
setwd("C:\\Users\\admin\\Documents\\Ubaid R")
getwd()



df<-read.csv("carsales.csv")
View(df)


class(df$price)
typeof(df$price)

df[[1]][10]

df1<-read.csv("bank-marketing.csv",sep=';')
View(df1)

nrow(df1)
dim(df1)
ncol(df1)
names(df1)

View(df1[1:10,])

View(df1[1:10,3:6])


View(summary(df1))

View(df1[df1$balance>1000,])

View(df1[df1$balance>1000 & df1$education=="tertiary",])

View(df1[df1$balance<500 & df1$age>18 & df1$marital=='single',c(6,8)])


df_s<-df1[df1$balance<500 & df1$age>18 & df1$marital=='single',]

View(df_s)

df_s<-df_s[,-9]

nrow(df_s)
df_s[1,3]<-'married'
df_s[1,3]

car_s<-read.csv("carsales.csv")
View(car_s)
car_s$half_price<-car_s$price/2
