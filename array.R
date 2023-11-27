market1<-matrix(c(22,44,66,9,11,5),nrow = 3)
rownames(market1)<-c('brand1','brand2','brand3')
colnames(market1)<- (c('code','price'))
market1
market2<-matrix(c(55,77,99,6,25,36),nrow = 3)
market2
rownames(market2)<-c('brand1','brand2','brand3')
colnames(market2)<- (c('code','price'))
market2


final<-array(data = c(market1,market2),dim = (c(3,2,2)))
final


final_1<-array(data=c(market1,market2),dim = (c(3,2,2)),
               dimnames = list(c("brand1","brand2","brand3"),c("code","price")))
final_1

dimnames(final_1)



final_1<-array(data=c(market1,market2),dim = (c(3,2,2)),
               dimnames = list(c("brand1","brand2","brand3"),c("code","price"),c('market1','market2')))
final_1


dimnames(final_1)

dimnames(final_1)<-list(c("brand1","brand2","brand3"),c("code","price"),c('mark1','mark2'))
final_1
View(final_1)



M1<-matrix(1:4,nrow = 2)
M2<-matrix(6:9,nrow = 2)
M3<-matrix(10:13,nrow = 2)
M4<-matrix(11:14,nrow = 2)

arr<-array(data = c(M1,M2,M3,M4),dim = c(2,2,4),
           dimnames = list(c('row1','row2'),c('col1','col2'),c('M1','M2','M3','M4')))
arr

arr[,,1]
arr[2,1,1]

arr[2,,1:2]
arr[,1,1:2]

arr[,,1]<-200
arr[,,1]
arr[,,1]<-matrix()

arr[,1,c(2,4)]




