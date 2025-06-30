#Data Loading and Cleaning
library(tidyverse)
df=read_csv("C:\\Users\\LAP AID\\Downloads\\ocn.csv")
summary(df)

#NC file reading
#library(ncdf4)
#nc_open("ocn.nc")

#Data Exploration and Summary Statistics
summary(df)
str(df)
install.packages("psych")
library(psych)

#Visualization
# Scatterplot of SST vs Salinity
ggplot(df, aes(x = Salinity, y = SST)) + 
  geom_point() + 
  theme_minimal()

# Time series plot
ggplot(df, aes(x = Date, y = SST)) + 
  geom_line() + 
  labs(title = "Sea Surface Temperature over Time")

#Correlation 
cor(df$SST, df$Salinity, use = "complete.obs")

#Seasonality and Time Series Analysis
library(lubridate)
data$month <- month(data$date)

install.packages("forecast")
library(forecast)
ts_sst= ts(df$SST, frequency = 12)
plot(decompose(ts_sst))