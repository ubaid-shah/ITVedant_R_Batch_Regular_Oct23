install.packages('ggplot2')
data()
data(iris)
View(iris)
head(iris)

dim(iris)

summary(iris)

library(ggplot2)

ggplot(iris,aes(x=Sepal.Length,y=Petal.Length))+geom_point()
ggplot(iris,aes(x=Sepal.Length,y=Petal.Length,col=Species))+geom_point()


ggplot(iris,aes(x=Sepal.Length,y=Petal.Length,col=Species))+
  geom_point()+
  ggtitle('Scatter Plot Petal Length vs Sepal Length')


ggplot(iris,aes(x=Sepal.Length,y=Petal.Length,col=Species))+
  geom_point()+
  ggtitle('Scatter Plot Petal Length vs Sepal Length')+
  xlab('Sepal_length')+
  ylab('Petal_Length')


bank<-read.csv(r'(C:\Users\admin\Documents\Ubaid R\bank-marketing.csv)',sep = ";")

View(bank)

ggplot(bank,aes(age))+geom_bar(color='black',fill='aquamarine')



ggplot(bank,aes(x=age,color=marital,fill=marital))+geom_bar()

ggplot(bank,aes(x=age,color=marital))+geom_bar(fill='white')+
  theme(legend.position = 'bottom')

ggplot(bank,aes(x=marital,y=balance/1000000))+geom_col()+
  xlab('Marital')+
  ylab('Balance in Million$')+
  ggtitle('Balnce by Marital Status')


ggplot(bank,aes(x=marital,y=balance/1000000,fill=marital))+geom_col()+
  xlab('Marital')+
  ylab('Balance in Million$')+
  ggtitle('Balnce by Marital Status')+
  scale_fill_manual('Marital',values = c('pink','skyblue','black'))
# -------------------------------------------------------------------- #

install.packages('scales')
library(scales)

ggplot(bank,aes(x=marital,y=balance/1000000,fill=marital))+geom_col()+
  xlab('Marital')+
  ylab('Balance in Million$')+
  ggtitle('Balnce by Marital Status')+
  scale_fill_manual('Marital',values = c('pink','skyblue','black'))+
  scale_y_continuous(breaks = seq(0,40,5))

install.packages('patchwork')
library(patchwork)


p1<- ggplot(bank,aes(x=marital,y=balance/1000000,fill=marital))+geom_col()+
  xlab('Marital')+
  ylab('Balance in Million$')+
  ggtitle('Balnce by Marital Status')+
  scale_fill_manual('Marital',values = c('pink','skyblue','black'))+
  scale_y_continuous(breaks = seq(0,40,5))


p2<-ggplot(iris,aes(x=Sepal.Length,y=Petal.Length,col=Species))+
  geom_point()+
  ggtitle('Scatter Plot Petal Length vs Sepal Length')+
  xlab('Sepal_length')+
  ylab('Petal_Length')

p1+p2
p1/p2

(p1+p2)/p2







