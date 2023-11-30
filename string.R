x<- "Hi My name is Ubaid"
x
nchar(x)
length(x)

letters

letters[1:5]
letters[c(1,3,5)]

print(x)
cat(x)

print(x,quote = FALSE)

y<-"This is apple's Phone"
y
y<-'This is apple\'s Phone'
y

noquote(x)


format(3.123654,digits=2)
format(123654.636985,digits=7)

x<- readline("enter your name: ")

sprintf('%.2f',105.369852)

x<- "My name is Ubaid and My age is %d and my wieght is %.1f"
sprintf(x,18,68.365)

print(paste("My name is",name,'My age is',age,'and my weight is',weight))

install.packages("tidyverse")

{
  name<-readline('Eneter your name: ')
  mobile<-as.numeric(readline('Eneter your Phone no: '))
  age<-as.integer(readline('Eneter your age: '))
}

cat(sprintf("Hello %s \nPlease Verify your number:%0.f \nAs your age is %d you're eligible",name,mobile,age))


typeof(mobile)
class(mobile)

cat('Hello','Ubaid',sep='-')

x<-c('Hello','How Are')
y<-c('Ubaid','You?')
cat(x,y)
paste(x,y)


names<-c('Ubaid','Rajan','Sanjil','Tejas','Sudais')
post<-c('Trainer',rep('Learner',4))
age<-c(33,35,24,21,23)
paste(names,post,age,sep = '--->')
paste(names,post,age,sep = '--->',collapse = '/ ')



toupper('ubaid')
tolower('Ubaid')
casefold('My name is Ubaid')
casefold('My name is Ubaid',upper = T)



chartr('O','U','Obaid')
chartr('@','#','@ubaidshah')


x<-c("Ubaid", "Shah",'Nick')

grep(pattern = 'ai',x)
grep(pattern = 'ai',x,value = TRUE)
grep(pattern = 'u',x,value = TRUE)
grep(pattern = 'u',x,value = TRUE,ignore.case = TRUE)







chartr('@&',"##",'@ubaidshah &shahubaid')





substr("Ubaid Shah",2,3)<-'##'

substr(c("Mumbai",'Pune','banglore'),1,3)<-'###'


substr(c("Mumbai",'Pune','banglore'),1,1)<-'#'






x<-strsplit("986-369-1234",'-')
length(x)
