setwd(r'(C:\Users\admin\Documents\Ubaid_R)')
install.packages("ggplot2")
install.packages('tidyverse')
library(ggplot2)
library(tidyverse)
df<-read.csv('train.csv')



View(df)
head(df)
str(df)

# 1. ------------------- Dimensions, summary, structure ----------------------------------- #
dim_df <- dim(df)
dim_df


summary(df)
col<-colnames(df)

unique(df$Item_Fat_Content)
unique(df$Item_Type)
unique(df$Outlet_Establishment_Year)
unique(df$Outlet_Size)
 # ----------------------------- Subset ---------------------------------# 


lf <- df[df$Item_Fat_Content=='Low Fat',c('Item_Weight','Item_MRP')]
View(df)
df[df$Item_Fat_Content=='LF' | df$Item_Fat_Content=='low fat',] <-'Low Fat'
df[df$Item_Fat_Content=='reg',]<-'Regular'
sum(is.na(df))
colSums(is.na(df))

df$Item_Weight<-ifelse((df$Item_Weight=='Regular'|df$Item_Weight=='Low Fat'),0,df$Item_Weight)
df$Item_Weight<-as.numeric(df$Item_Weight)
df$Item_Weight<-replace(df$Item_Weight,is.na(df$Item_Weight),mean(df$Item_Weight,na.rm = T))

View(df[df$Item_Weight==0,])
df<-(df[!df$Item_Weight==0,])

df$Item_Outlet_Sales<-as.numeric(df$Item_Outlet_Sales)
df$Outlet_Establishment_Year<-as.numeric(df$Outlet_Establishment_Year)
df$Item_MRP<-as.numeric(df$Item_MRP)
df$Item_Visibility<-as.numeric(df$Item_Visibility)

summary(df)
View(df)


table(df$Outlet_Size)
df$Outlet_Size<-ifelse(df$Outlet_Size=='','Medium',df$Outlet_Size)
View(df[df$Outlet_Size=='',])


table(df$Item_Fat_Content)

View(table(df$Item_Type))

df_IT<-data.frame(table(df$Item_Type))
df %>% select(2:4) %>% glimpse()

View(df_IT)
df_IT$Freq
P_item_type<-ggplot(df_IT,aes(x='',y=Freq,fill=Var1))+
  geom_col()+
  geom_text(aes(label=paste(round(Freq*100/sum(Freq)),'%')),position = position_stack(vjust = 0.2))+
  coord_polar(theta = 'y')+
  labs(title='% of Item_type')+
  theme_void()


P_item_type











