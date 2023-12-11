install.packages('rvest')
library('rvest')
url<-'https://www.imdb.com/search/title/?title_type=feature&release_date=2023-01-07,2023-12-07&count=100'
webpage<-read_html(url)
webpage

title_info<-html_nodes(webpage,'.ipc-title__text')
title_info

title_info_text<-html_text(title_info)
title_info_text

head(title_info_text)

run_time<-html_nodes(webpage,'.sc-479faa3c-8.bNrEFi.dli-title-metadata-item')
run_time<-html_text(run_time)
run_time[4]

year<-c()
duration<-c()
rating<-c()
length(run_time)
for (i in seq(1,24,by=3)){
  year<-c(year,as.integer(run_time[i]))
  duration<-c(duration,run_time[i+1])
  rating<-c(rating,run_time[i+2])
}
year
duration
rating

description<-html_nodes(webpage,'.ipc-html-content-inner-div')
description<-html_text(description)
description[1:8]

user_rating<-html_text(html_nodes(webpage,'.ipc-rating-star.ipc-rating-star--base.ipc-rating-star--imdb.ratingGroup--imdb-rating'))

user_rating[1]
strsplit(user_rating[1],split = ' ')
str


df<-data.frame(x[2:9],year,duration,rating,user_rating[1:8])
View(df)
x<-as.character(title_info_text[2])
substr((as.character(title_info_text[2])),4,nchar(x))
(substr(title_info_text[2],2,length(title_info_text[2])))
x<-c()
for (i in 2:9){
  cd<-as.character(title_info_text[i])
  y<-substr(cd,4,nchar(cd))
  x<-c(x,y)
}
title_info_text[2]
nchar(x)
x
