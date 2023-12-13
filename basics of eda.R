install.packages("tidyverse")
library(tidyverse)
library(dplyr)
library(ggplot2)
stw<-starwars
View(stw)
str(stw)
colnames(stw)
rownames(stw)
dim(stw)
is.na(stw)
is.na(stw$height)
colSums(is.na(stw[c(3,4,7)]))


sum(is.na(stw))
sum(is.na(stw$height))

unique(stw$sex)

colSums(is.na(stw))
is.character(stw$gender)
is.numeric(stw$height)
is.character(stw$height)
summary(stw)

head(stw$hair_color)


tail(stw)
c(1:8)
df1<-select(stw,-c(1:8))
df1<-select(stw,c(1:8))
View(df1)

# dplyr aims to provide a function for each basic verb of data manipulation. These verbs can be organised into three categories based on the component of the dataset that they work with:

#Rows:
#filter() chooses rows based on column values.
# slice() chooses rows based on location.
# arrange() changes the order of the rows.

# Columns:
#select() changes whether or not a column is included.
# rename() changes the name of columns.
# mutate() changes the values of columns and creates new columns.
# relocate() changes the order of the columns.
# Groups of rows:
# summarise() collapses a group into a single row.

li_br<-(stw[stw$skin_color == "light" & stw$eye_color == "brown",])
mean_h<-round(mean(li_br$height,na.rm = TRUE))

li_br$height[is.na(li_br$height)]<-mean_h

View(li_br)

ggplot(data=li_br,aes(x=name,y=height))+geom_col()




stw %>% 
  filter(skin_color == "light", eye_color == "brown")%>%
  mutate(height=ifelse((is.na(height)),mean(height,na.rm = TRUE),
                       height))%>%
  ggplot(aes(x=name,y=height,fill=name))+geom_col()+
  labs(title = 'Bar Chart',x='Names',y='Height')



unique(stw$skin_color)
