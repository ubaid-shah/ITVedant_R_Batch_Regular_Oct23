# if (condition) { statement} else {statment}

x<-5
if (x<10) {"X is greater"} else {"X is sammaler"}

if (x<10 & x>5) {
  "X is in middle"
}else{
  " X is not in middle"
}


if (x<=5 )
{
  x*5
}

if (x<3) 
{
  x^2
} else if (x<=4)
{
  x^3
} else 
  {
  x^4
}

# --------------------------------------------------------------- #
{
budget1<-15000L
budget2<-10000L
ram1<-6L
ram2<-4L
{
  color=tolower(readline("Enter the color: "))
  brand=tolower(readline("Enter the brand: "))
  price=as.integer(readline("Enter the price: "))
  ram=as.integer(readline("Enter the required RAM:"))
}
if (price<=budget1 & ram==ram1)
{
if (brand=="xiome" & color=='black') 
  { "Purchased mobile 1"} else if (brand=="realme" & color=='red')
  {
    "Purchased mobile 2"
  } else if (brand=="samsung" & color=='red') 
  {
    "Purchased mobile 3"
  } else
  {
    "Please come later"
  }
} else if ((price<=budget2 & ram==ram2)) {
  if (brand=="xiome" & color=='black') 
  { "Purchased mobile 4"} else if (brand=="realme" & color=='red')
  {
    "Purchased mobile 5"
  } else if (brand=="samsung" & color=='red') 
  {
    "Purchased mobile 6"
  } else
  {
    "Please come later"
  }
} else {
  'Buy Online'
}
}

# -----------------------------------------------------------------------------------#
{
  month=as.integer(readline('Enter Month number: '))
  
  if (month %in% c(12,1,2)) {'Shimla'}
  else if (month %in% c(3,4,5)) {'Goa'}
  else if (month %in% c(6,7,8)) {'Ooty'}
  else if (month %in% c(9,10,11)) {'Mahableshwar'}
  else {'Enter valid month number'}
  
}








