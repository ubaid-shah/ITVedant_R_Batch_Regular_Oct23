employee<-list(names=c("Amay","Vijay","Vicky","Salman"),
               age=c(49,28,35,25),
               salary=c(95000,80000,62000,46000),
               manager=c(TRUE,FALSE,FALSE,FALSE))
employee


employee1<-list(c("Amay","Vijay","Vicky","Salman"),
               c(49,28,35,25),
               c(95000,80000,62000,46000),
               c(TRUE,FALSE,FALSE,FALSE))
employee1


lunch<-list(Suresh=c("Omlette","Fried Rice"),
            Naresh=c("Paneer Masala","Rice","Roti"),
            Mangesh=c("Lassi"),
            Bill=2000)


lunch[["Bill"]]

lunch$Suresh

lunch$Naresh[c(2,3)]


lunch[c('Naresh','Bill')]



lunch$Naresh[-2]


lunch$Naresh[2]<-"Pepsi"
lunch






car_spec<-list()
car_spec$engine<-c(1.8,3.2,1.8,4)
car_spec


car_spec$hp<-c(140,225,336,500)
car_spec$weight<-c(2639,2000,3850,4000)
names(car_spec)
names(car_spec[1])

names(car_spec)<-c("engine_cc","hp","weight")
car_spec




lapply(car_spec,mean)
lapply(car_spec,max)
lapply(car_spec, min)

car_spec$brand<-c("Honda","Maruti","WV","Hundai")
car_spec

lapply(car_spec,mean)

sapply(car_spec, mean,simplify = TRUE)

z<-list(names=c("SRK","Amir","Salman","Akshay","Amitabh"),
        height=c(158,160,155,170,175),
        weight=c(65,69,85,80,79))
z

min_w<-min(z$weight)
max_h<-max(z$height)

name_min_w<-z$names[which(z$weight==min(z$weight))]
name_max_h<-z$name[which(z$height==max(z$height))]
name_min_w

paste(name_min_w,'---->>',min_w)
paste(name_max_h,'----->>',max_h)
