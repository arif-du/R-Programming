?plot #documentation of plotting
head(cars) #Dataframe already in R
plot(cars)
plot(cars$speed, cars$dist)
#change the axes
plot(cars$dist, cars$speed)
#change the color
plot(cars$dist, cars$speed, col = "blue")
plot(cars$dist, cars$speed, col = "red")
plot(cars$dist, cars$speed, col = "black")
plot(cars$dist, cars$speed, col = "purple")
#add the tile of the graph
plot(cars$dist, cars$speed, col = "purple", main = "Car Plotting")
#change the label of the x and y axes
plot(cars$dist, cars$speed, col = "purple", main = "Car Plotting", xlab = "Distance", ylab = "Car Speed")

#types of plot
plot(cars$speed, cars$dist)
#line plot
plot(cars$speed, cars$dist, "l") #line plot
plot(cars$speed, cars$dist, "b") # both line and dot point
#histogram
plot(cars$speed, cars$dist, "h")

#Heatmap
#install pheatmap
install.packages("pheatmap")
library(pheatmap)     
help(pheatmap)
#make a dataframe
head(mtcars) #pick from R
class(mtcars)
df=scale(mtcars)
pheatmap(df)
pheatmap(df, border_color = "red")
pheatmap(df, 
         border_color = "red",
         cellwidth = 15,
         cellheight = 18)
pheatmap(df, 
         border_color = "red",
         cellwidth = 15,
         cellheight = 18,
         cluster_rows = F)
pheatmap(df, 
         border_color = "red",
         cellwidth = 15,
         cellheight = 18,
         cluster_rows = T,
         cutree_rows = 2)
pheatmap(df, 
         border_color = "red",
         cellwidth = 15,
         cellheight = 18,
         cluster_rows = T,
         cutree_rows = 3)
pheatmap(df, 
         border_color = "red",
         cellwidth = 25,
         cellheight = 28,
         cluster_rows = T,
         cutree_rows = 3,
         show_rownames = F)
pheatmap(df, 
         border_color = "red",
         cellwidth = 15,
         cellheight = 18,
         cluster_rows = T,
         cutree_rows = 3,
         show_rownames = T,
         fontsize = 8,
         display_numbers = T)
#scale() function
#Variables (rows or columns) may have different units or magnitudes
#Scaling helps by converting values to z-scores
#This makes heatmap colors and clustering meaningful across rows/columns.
#In R, the scale argument in pheatmap() is crucial for normalizing your data before clustering — especially when the variables (rows or columns) are on different scales.
#if we don't use the scale()? 
pheatmap(mtcars)
pheatmap(mtcars,scale = "column")