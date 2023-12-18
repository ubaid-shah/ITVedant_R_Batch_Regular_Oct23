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
unique(df$Item_Weight)
