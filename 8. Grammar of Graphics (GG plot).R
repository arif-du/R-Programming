#ggplot2 is an R package for producing visualizations of data. 
#Unlike many graphics packages, ggplot2 uses a conceptual framework based on the grammar of graphics. 
#This allows you to 'speak' a graph from composable elements, instead of being limited to a predefined set of charts.

#Command examople:
#ggplot(dataframe, aes(column x-axis, column y-axis))+what kind of plot()
#aesthetics are how variables in the data set are mapped to aesthetic elements of the graphic. 
#This includes horizontal (x-axis) and vertical (y-axis) positioning, as well as things like color and shape.

install.packages("ggplot2")
library(ggplot2)
head(mpg)       
ggplot(mpg, aes(displ, hwy)) + 
  geom_point()
ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()        
ggplot(mpg, aes(displ, hwy, colour = trans)) + 
  geom_point()         
ggplot(mpg, aes(displ, cty, colour = trans)) + 
  geom_point() 

#line plot
df=data.frame(col1=1:3, col2=c(1,4,2))
ggplot(df, aes(col1, col2))+
  geom_line()

ggplot(df, aes(col1, col2))+
  geom_line(size=2, color="red")+
  geom_point(size=5, shape=21, stroke=3)
help("geom_line")

#Tidyverse
#Tidyverse is a suite of packages in R programming that provide key data transformation functions. 
#Each of the core packages offers useful tools for preparing data for deeper analysis as well as creating aesthetically pleasing and presentable formats for display.
install.packages("tidyverse")
library(tidyverse)
library(gapminder)

head(gapminder)

#barplot
ggplot(gapminder, aes(continent))+
  geom_bar()
#use of pipe in ggplot
gapminder %>%
  filter(year==1952) %>%
  ggplot(aes(continent))+
  geom_bar()
#plot population
head(gapminder)
gapminder %>%
  filter(year==1952) %>%
  ggplot(aes(continent, pop))+
  geom_bar(stat="identity") #stat="count" is by default

#if we don't want to tell the stat?
gapminder %>%
  filter(year==1952) %>%
  ggplot(aes(continent, pop))+
  geom_col()
#stacked bar
gapminder %>%
  filter(year>=1952 & year <=1970) %>%
  ggplot(aes(year, pop))+
  geom_col()

gapminder %>%
  filter(year>=1952 & year <=1970) %>%
  ggplot(aes(year, pop))+
  geom_col(aes(fill=continent))

head(gapminder)
#boxplot
ggplot(gapminder, aes(continent,lifeExp))+
  geom_boxplot()

#violin plot
ggplot(gapminder, aes(continent,lifeExp))+
  geom_violin()
ggplot(gapminder, aes(continent,lifeExp, color=continent))+
  geom_violin(draw_quantiles = c(.25,.5,.75))
ggplot(gapminder, aes(continent,lifeExp, fill=continent))+
  geom_violin(draw_quantiles = c(.25,.5,.75))

#jitter
ggplot(gapminder, aes(continent,lifeExp))+
  geom_violin(draw_quantiles = c(.25,.5,.75))+
  geom_jitter()
ggplot(gapminder, aes(continent,lifeExp))+
  geom_jitter()+
  geom_violin(draw_quantiles = c(.25,.5,.75))
ggplot(gapminder, aes(continent,lifeExp))+
  geom_jitter(alpha=0.2)+
  geom_violin(draw_quantiles = c(.25,.5,.75))

#if we want to sort the continent name and then plot 
gapminder$continent=factor(gapminder$continent, levels=c("Oceania","Europe", "Asia", "Americas","Africa"))
ggplot(gapminder, aes(continent,lifeExp))+
  geom_jitter(alpha=0.2)+
  geom_violin(draw_quantiles = c(.25,.5,.75))

#facet
ggplot(gapminder, aes(lifeExp, gdpPercap))+
  geom_point()
#divide by continent
ggplot(gapminder, aes(lifeExp, gdpPercap))+
  geom_point()+
  facet_grid(.~continent)

ggplot(gapminder, aes(lifeExp, gdpPercap))+
  geom_point()+
  facet_grid(continent~.)

#facetwrap()
ggplot(gapminder, aes(lifeExp, gdpPercap))+
  geom_point()+
  facet_wrap(.~continent)

#coordinate flip
ggplot(gapminder, aes(continent,lifeExp))+
  geom_boxplot()
ggplot(gapminder, aes(continent,lifeExp))+
  geom_boxplot()+
  coord_flip()

#theme
ggplot(gapminder, aes(continent,lifeExp, fill=continent))+
  geom_boxplot()
ggplot(gapminder, aes(continent,lifeExp, fill=continent))+
  geom_boxplot()+
  theme_bw()
ggplot(gapminder, aes(continent,lifeExp, fill=continent))+
  geom_boxplot()+
  theme_classic()
ggplot(gapminder, aes(continent,lifeExp, fill=continent))+
  geom_boxplot()+
  theme_dark()