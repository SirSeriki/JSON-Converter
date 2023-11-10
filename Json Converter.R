setwd("C:/Users/Work Station/Desktop/RevOps Project/Datasets")

# Install packages
install.packages("dplyr")
install.packages("tidyverse")
install.packages("writexl")
install.packages("jsonlite")
install.packages("rjson")


# Install libraries
library(dplyr)
library(tidyverse)
library(writexl)
library(jsonlite)
library(rjson)

# collecting json file

User_data1 <- read_json("C:/Users/Work Station/Desktop/RevOps Project/Datasets/Twitter Data November 2021/User data November week 4.json",  simplify = TRUE)
User_data2 <- read_json("C:/Users/Work Station/Desktop/RevOps Project/Datasets/Twitter Data November 2021/week 4 2.json", simplify = TRUE)
User_data3 <- read_json("C:/Users/Work Station/Desktop/RevOps Project/Datasets/Twitter Data November 2021/week 4 3.json", simplify = TRUE)
User_data4 <- read_json("C:/Users/Work Station/Desktop/RevOps Project/Datasets/Twitter Data November 2021/week 4 4.json", simplify = TRUE)

#Converting to a flat dataframe 

df <- as.data.frame(User_data1$data)
df2 <- as.data.frame(User_data2$data)
df3 <- as.data.frame(User_data3$data)
df4 <- as.data.frame(User_data4$data)
df5 <- as.data.frame(User_data5$data)
df6 <- as.data.frame(User_data6$data)
str(df)
str(df2)
str(df4)
view(df)

#Dropping null values 

df %>% 
  drop_na(url)
  drop_na(location)


#df2 <- df %>%
# arrange(public_metrics.followers_count,public_metrics.listed_count) %>%
# group_by(username) %>%

Print(df$username)

is.na(df$location)
na.fail(df$location)
any(is.na(df))

#Omit all missing values in the dataset

df <- na.omit(df)
is.na(df)

#Write CSV to local drive 

write.csv(df3,"C:/Users/Work Station/Desktop/RevOps Project/Datasets/Twitter Data November 2021/search data week 4 3.csv") # For first set of search data
write.csv(df,"C:/Users/Work Station/Desktop/RevOps Project/Datasets/TwitterUserData6.csv", row.names = FALSE) # Username data 


