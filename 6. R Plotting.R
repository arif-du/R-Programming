# Plot
# The plot() function is used to draw points (markers) in a diagram.
# The function takes parameters for specifying points in the diagram.
# Parameter 1 specifies points on the x-axis.
# Parameter 2 specifies points on the y-axis.
# At its simplest, you can use the plot() function to plot two numbers against each other:
#Draw one point in the diagram, at position (1) and position (3):
plot(1,3)
#Draw two points in the diagram, one at position (1, 3) and one in position (8, 10):
plot(c(1, 8), c(3, 10))
#You can plot as many points as you like, just make sure you have the same number of points in both axis:
plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))
#For better organization, when you have many values, it is better to use variables:
x = c(1, 2, 3, 4, 5)
y = c(3, 7, 8, 9, 12)
plot(x, y)
#If you want to draw dots in a sequence, on both the x-axis and the y-axis, use the : operator:
plot(1:10)
#The plot() function also takes a type parameter with the value l to draw a line to connect all the points in the diagram:
plot(1:10, type="l")
#The plot() function also accept other parameters, such as main, xlab and ylab if you want to customize the graph with a main title and different labels for the x and y-axis:
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis")
#Use col="color" to add a color to the points:
plot(1:10, col="red")
#Use cex=number to change the size of the points (1 is default, while 0.5 means 50% smaller, and 2 means 100% larger):
plot(1:10, cex=2)
#Use pch with a value from 0 to 25 to change the point shape format:
plot(1:10, pch=25, cex=2)
#The values of the pch parameter ranges from 0 to 25, which means that we can choose up to 26 different types of point shapes:
#To change the width of the line, use the lwd parameter (1 is default, while 0.5 means 50% smaller, and 2 means 100% larger):
plot(1:10, type="l", lwd=2)
#The line is solid by default. Use the lty parameter with a value from 0 to 6 to specify the line format.
plot(1:10, type="l", lwd=5, lty=3)
# Available parameter values for lty:
# 0 removes the line
# 1 displays a solid line
# 2 displays a dashed line
# 3 displays a dotted line
# 4 displays a "dot dashed" line
# 5 displays a "long dashed" line
# 6 displays a "two dashed" line
#To display more than one line in a graph, use the plot() function together with the lines() function:
line1 = c(1,2,3,4,5,10)
line2 = c(2,5,7,8,9,10)
plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")

# Scatter Plots
# You learned from the Plot chapter that the plot() function is used to plot numbers against each other.
# A "scatter plot" is a type of plot used to display the relationship between two numerical variables, and plots one dot for each observation.
# It needs two vectors of same length, one for the x-axis (horizontal) and one for the y-axis (vertical):
x = c(5,7,8,7,2,2,9,4,11,12,9,6)
y = c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x, y)
plot(x, y, main="Observation of Cars", xlab="Car age", ylab="Car speed")
#To compare the plot with another plot, use the points() function:
# day one, the age and speed of 12 cars:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)
# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)
plot(x1, y1, main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red", cex=2)
points(x2, y2, col="blue", cex=2)

# Pie Charts
# A pie chart is a circular graphical view of data.
# Use the pie() function to draw pie charts:
# Create a vector of pies
x = c(10,20,30,40)
# Display the pie chart
pie(x)
# You can change the start angle of the pie chart with the init.angle parameter.
# The value of init.angle is defined with angle in degrees, where default angle is 0.
# Start the first pie at 90 degrees:
# Create a vector of pies
x <- c(10,20,30,40)
# Display the pie chart and start the first pie at 90 degrees
pie(x, init.angle = 90)
#Use the label parameter to add a label to the pie chart, and use the main parameter to add a header:
# Create a vector of labels
mylabel = c("Apples", "Bananas", "Cherries", "Dates")
# Display the pie chart with labels
pie(x, label = mylabel, main = "Fruits")
#You can add a color to each pie with the col parameter:
# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")
# Display the pie chart with colors
pie(x, label = mylabel, main = "Fruits", col = colors)
#To add a list of explanation for each pie, use the legend() function:
legend("bottomright", mylabel, fill = colors)
# The legend can be positioned as either:
#   bottomright, bottom, bottomleft, left, topleft, top, topright, right, center

# Bar Charts
# A bar chart uses rectangular bars to visualize data. Bar charts can be displayed horizontally or vertically. The height or length of the bars are proportional to the values they represent.
# Use the barplot() function to draw a vertical bar chart:
# x-axis values
x = c("A", "B", "C", "D")
# y-axis values
y = c(2, 4, 6, 8)
barplot(y, names.arg = x)
# Example Explained
# The x variable represents values in the x-axis (A,B,C,D)
# The y variable represents values in the y-axis (2,4,6,8)
# Then we use the barplot() function to create a bar chart of the values
# names.arg defines the names of each observation in the x-axis
#Use the col parameter to change the color of the bars:
barplot(y, names.arg = x, col = "red")
#To change the bar texture, use the density parameter:
barplot(y, names.arg = x, density = 10)
#Use the width parameter to change the width of the bars:
barplot(y, names.arg = x, width = c(1,2,3,4))
#If you want the bars to be displayed horizontally instead of vertically, use horiz=TRUE:
barplot(y, names.arg = x, horiz = TRUE)