install.packages('nycflights13')
install.packages('dplyr')
install.packages('ggplot2')
install.packages('tidyr')

library(nycflights13)
library(dplyr)
library(ggplot2)
library(tidyr)

# Bài 1: Ve do thi scatter:

data("airlines")
data("flights")

alf <- flights[flights$carrier == "AS",]
ggplot(alf, aes(x = dep_delay, y = arr_delay)) + geom_point()+ theme_gray() 

#Bai 2: ve do thi Linegraphs:

data("weather")

thoi_tiet <- subset(weather, weather$origin == "EWR"&
                      weather$month == "1"& weather$day <=15)

ggplot(thoi_tiet, aes(x=time_hour, y=temp)) + geom_line() + theme_gray()

#Bai 3: ve do thi Histograms:

thoi_tiet_2 <- weather %>%
  drop_na(temp)

ggplot(thoi_tiet_2,aes(temp)) + geom_histogram( bins=30) + theme_gray()

#Bai 4: ve bieu do boxplot:

ggplot(thoi_tiet_2, aes(x=factor(month), y=temp)) + geom_boxplot() + theme_gray() 


#Bai 5: ve bieu do barplot:

ggplot(flights, aes(carrier)) + geom_bar() + theme_gray() 