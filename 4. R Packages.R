#Packages in R Programming language are a set of R functions, compiled code, and sample data
#package installations

install.packages("gapminder") #perform one time
library(gapminder) #needs to call before use

head(gapminder)
dim(gapminder)
str(gapminder)
summary(gapminder)

#documentation
?gapminder