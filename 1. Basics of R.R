#The console
#The console pane in RStudio is the place where commands written in the R language can be typed and executed immediately by the computer. 

#How to clear the console? => Ctrl+L

#How to insert comment? => by #
#multiple line comments? => select the entire section, then Code-> Comment/Uncomment lines
#or type Ctrl+Shift+C

#What is global environment in R programming?
#When a user starts a new session in R, the R system creates a new environment for objects created during that session. This environment is called the global environment.

a=100
b=200
c=300

#History tab
#keeps track of all the commands we used

#How to remove entities from the history? => use the red cross button in the toolbar
#If we want to clear entire entities? => groom button on the toolbar

#Packages
#R packages are a collection of R functions, complied code and sample data. They are stored under a directory called "library" in the R environment.

#R script / text editor
# Go to File-> New File -> R script
#Or type Ctrl+Shift+N

#R Syntax
#Syntax for Strings
"Hello, World"
'Hello World'

#Run options
# 1. Run button: Run a single line / Ctrl+Enter
# 2. Re-Run button: re-run the previous code section 
# 3. Source button: run the entire document

#How to save the R script? => Save icon / Ctrl+S / File->Save

#Vectors
# A vector is simply a list of items that are of the same type.
# To combine the list of items to a vector, use the c() function and separate the items by a comma.
# In the example below, we create a vector variable called fruits, that combine strings:
# Vector of strings
fruits= c("banana", "apple", "orange")
# Print fruits
print(fruits)
#To find out how many items a vector has, use the length() function:
length(fruits)
#To sort items in a vector alphabetically or numerically, use the sort() function:
