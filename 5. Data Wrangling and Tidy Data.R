#Data wrangling
#Data wrangling refers to the process of getting your data into a useful form for visualization, summary, and modeling. 
#Wrangling is an important part of data science, because data rarely comes in precisely the form that suits some particular analysis.

#Raw data
#Afganistan is located within south asia and central asia which has with life expectancy of 28.801 years in 1052....

#Wrangling the data
library(gapminder)
head(gapminder)

#Tidy Data
#Every variable is stored in its own column. 
#Every observation is stored in its own row—that is, every row corresponds to a single case. 
#Each value of a variable is stored in a cell of the table. 
#Values should not contain units.

#Data wrangling and tidy data
#Data filtering, searching, sorting, adding. How to do it?
#using dplyr

#dplyr is a powerful R package that simplifies data manipulation in data frames. 
#It provides a set of functions, often called "verbs," for common data wrangling tasks like filtering, selecting, mutating, summarizing, and joining datasets. 
#Its grammar-like syntax makes data manipulation more intuitive and efficient.

#install dplyr
install.packages("dplyr")
library(dplyr)
library(gapminder)
?dplyr #documentation
head(gapminder)

#extract country column by select()
select(gapminder,country)
#extract country and continent column by select()
select(gapminder,country,continent)
#drop country column from the gapminder dataset
select(gapminder,-country)
select(gapminder,-country,-continent)

#get column by partial matching of column names
select(gapminder,starts_with("c"))
select(gapminder,ends_with("p"))
select(gapminder,contains("c"))
select(gapminder,contains("co"))

#extract row by filter()
temp = filter(gapminder,country=="Afghanistan") #extract the data of afghanistan country
temp = filter(gapminder,country!="Afghanistan") #remove the data of afghanistan country

temp2 = filter(gapminder, country %in% c("Bangladesh", "Australia")) #%in% for checking membership in a vector in R.
#c() stands for "combine" or "concatenate" — it's a function that creates a vector, which is a basic data structure in R.

filter(gapminder, year==1952)
temp3 = filter(gapminder, year == 1952,lifeExp >= 40)             
temp4 = filter(gapminder, year >= 1952,lifeExp >= 40)             

#Adding new row in dataset
new_row = data.frame(
  country = "Newland",
  continent = "Asia",
  year = 2007,
  lifeExp = 70,
  pop = 1000000,
  gdpPercap = 1234.56
)

gapminder1= rbind(gapminder, new_row)

#Pipe Operator
#Pipe in R is an operator that takes the output of one function and passes it into another function as an argument. 
#It links together all the steps in data analysis making the code more efficient and readable. 
#Data analysis often involves many steps.

#Example
#sum(3,2)=>output1
#mean(output1)=>output2
#log(output2)=>final output

#we can do it by pipe operator in one line to reduce the complexity
#sum(3,2) %>% mean() %>% log()

sum(2,3) %>% mean() %>% log()
gapminder %>% head()
gapminder %>% select(country,pop) %>% filter(country=="Bangladesh")

#encourage to provide indentation
gapminder %>% 
  select(country,pop) %>% 
  filter(country=="Bangladesh")

#Add new column
#use of mutate() function
gapminder %>%
  mutate(TotalGDP=pop*gdpPercap)

#sorting
#use arrange() function
gapminder %>%
  mutate(TotalGDP=pop*gdpPercap) %>%
  arrange(TotalGDP)
#decending order
#use arrange() function
gapminder %>%
  mutate(TotalGDP=pop*gdpPercap) %>%
  arrange(TotalGDP) %>%
  arrange(desc(TotalGDP))

#statistical value of a dataset
#use of summary() function
head(gapminder)
gapminder %>%
  summarise(minimum=min(pop),
            average=mean(pop),
            maximum=max(pop),
            total=n())

#use of group_by() function to calculate these by continent wise
gapminder %>% 
  group_by(continent) %>%
  summarise(minimum=min(pop),
            average=mean(pop),
            maximum=max(pop),
            total=n())

gapminder %>% 
  group_by(continent,country) %>%
  summarise(minimum=min(pop),
            average=mean(pop),
            maximum=max(pop),
            total=n())

#Write file
head(gapminder)
# Write to a text file (tab-delimited by default)
write.table(gapminder, "C:\\Users\\LAP AID\\Downloads\\my_gapminder.txt")
write.table(gapminder, "C:\\Users\\LAP AID\\Downloads\\my_gapminder.txt", quote=FALSE)
write.table(gapminder, "C:\\Users\\LAP AID\\Downloads\\my_gapminder.txt", quote=FALSE, row.names = F)
#separated by comma, line
write.table(gapminder, "C:\\Users\\LAP AID\\Downloads\\my_gapminder.txt", quote=FALSE, sep = ",")
write.table(gapminder, "C:\\Users\\LAP AID\\Downloads\\my_gapminder.txt", quote=FALSE, sep = "|")
#CSV file
write.csv(gapminder, "C:\\Users\\LAP AID\\Downloads\\my_gapminder.csv", quote=FALSE)

#Read file
x = read.csv("C:\\Users\\LAP AID\\Downloads\\my_gapminder.csv")
y = read.table("C:\\Users\\LAP AID\\Downloads\\my_gapminder.txt")
y = read.table("C:\\Users\\LAP AID\\Downloads\\my_gapminder.txt",sep = "|", header = T)
colnames(y)

#Read Excel file
install.packages("gdata")
#The gdata package is a powerful tool for working with various file formats in R. 
#It provides a set of functions for reading and writing data in various file formats, including xls files.
install.packages("readxl")
library(gdata)
library(readxl)
xl=read_excel("C:\\Users\\LAP AID\\Downloads\\ocean_dataset.xlsx")