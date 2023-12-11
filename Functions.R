add_x<-function(x,y){
  print(x+y)
}
add_x(10,2)


add_three<-function(x,y,z){print(x+y+z)}
add_three(1,2,3)


add_two<-function(x=1,y=3){print(x+y)}
add_two()
add_two(x=5,9)
add_two(7,3)

divi<-function(x=10,y=2){sprintf("The division of %d/%d is:%0.f",x,y,x/y)}
divi(6,30)

# ----------------------------------------------------------------------------- #

cal<-function(x,y){
  if (x>y & y!=0) {
    cat(paste(sprintf('%d-%d=%d',x,y,x-y),'\n',sprintf('%d/%d=%0.2f',x,y,x/y)))
    }
  else if(x>y & y==0) {
    sprintf('%d-%d=%d',x,y,x-y)
    }
  else if(x<y){
    cat(paste(sprintf('%d+%d=%d',x,y,x+y),'\n',sprintf('%d*%d=%d',x,y,x*y)))
    }
}
{
x<-as.integer(readline('Enter the value of x: '))
y<-as.integer(readline('Enter the value of y: '))

cal(x,y)
}


z<- function(x){
  
  return(sprintf('%d^2=%d',x,x^2))   
  }
z(3)
# --------------------------------------------------------------------------#

area<-function(shape){
  if (shape=='cirlce'){
    r<-as.numeric(readline('enter the radius of circle: '))
    
    return(sprintf('The area of the circle with radius %f is: %0.2f',r,3.14*(r^2)))
  }
  else if (shape=='rectangle' | shape=='triangle'){
    b<-as.numeric(readline('enter the base: '))
    h<-as.numeric(readline('enter the height: '))
    
    if (shape=='rectangle'){
      return(sprintf('The area of rectangle is %f*%f=%0.2f',b,h,b*h))
    }
    else{
      return(sprintf('The area of triangle is 1/2%f*%f=%0.2f',b,h,0.5*b*h))
    }
  }
  
}
{
shape<-tolower(readline('Enter the shape: '))
area(shape)
}



























