for (i in 1:10){
  print(i)
}


for (i in 20:30){
  print(sqrt(i))
}


x<-c()
for (i in 1:5){
  x<-c(x,i)
}
x


y<-c()
for (i in 1:10){
  if (i%%2==0) {
    y[i]<-i
  }
}
y

y<-c()
for (i in 1:10){
  if (i%%2==0) {
    y[i]<-i
  }
}
y<-y[!is.na(y)]
y


x<-c()
for (i in 1:10){
  if (i==4) next
  x<-c(x,i)
}
x

x<-c()
for (i in 1:10){
  if (i==4) break
  x<-c(x,i)
}
x


x<-c()
for (i in 1:10){
  if (i%%2==0){
    x<-c(x,paste(i,'even'))
  }else{x<-c(x,paste(i,'odd'))}
  
}
x


x<-c()
for (i in 1:10){
  if (i%%2==0){
   next
  } else{x<-c(x,i)}
  
}
x

x<-c()
for (i in 1:10){
  print(rep('*',i),quote = FALSE)
}
x



age<-c(15,17,40,55,85,18)
name<-c('A','B','C','D','E','F')

for (i in 1:length(age)) {
  if (age[i]<=18){
    print(paste(name[i],'-','teen'))
  }else if (age[i] %in% 20:50) {
    print(paste(name[i],'-','middle'))
  } else if(age[i]>50){
    print(paste(name[i],'-','old'))
  }
}

count<-0
while (count<=5){
  print(count)
  count<-count+1
}

i <- 0
while(i<=10) {
  print(i)
  if (i%%2==0) break
  i<-i+1
}


i<-1
while (i<=10){
  if (i%%2==0){
    print('even')
  }else{
    print('odd')
  }
  i<-i+1
}


i<-1
repeat {
  if (i%%2==0){
    print('even')
  }else {print('odd')}
  
  i<-i+1
  if (i>=10) {
    break
  }
}

# _____________________________________________________________________ #
{
num<-as.integer(readline('Enter the number: '))

isPrime<-FALSE

if (num>1){
  isPrime<-TRUE
  for (i in 2:(num-1)){
    if (num%%i==0){
      isPrime<-FALSE
      break
    }
  }
}

if (num==2) isPrime<-TRUE

if (isPrime){
  sprintf('%d is a prime number',num)
}else{
  sprintf('%d is not a prime number',num)
}
}




























