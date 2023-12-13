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


sum(is.na(stw))


colSums(is.na(stw))


head(stw)


tail(stw)


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

stw %>% filter(skin_color == "light", eye_color == "brown")



