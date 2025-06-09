#The package named base contains the basic functions of the language
#no need for separate installation
#For reading and manipulating data

#print letters
letters[1:5]
LETTERS[1:5]

#print repeated elements
rep(1,3) #print one three times
rep("a",3)
rep("A",3)

#create data frame
df=data.frame(col1=letters[1:20], col2=rep("a",20), col3=1:20)
class(df)
str(df)
dim(df)
head(df)
tail(df)

#check duplicates
#returns logical output
duplicated(df$col1)
table(duplicated(df$col1))

duplicated(df$col2)
table(duplicated(df$col2))

!duplicated(df$col2)
table(!duplicated(df$col2))

#check unique
#print unique elements
unique(df$col2)
unique(df$col1)

#number of elements
length(df)
length(df$col1)

#set operations
intersect(df$col1, df$col2)
union(df$col1, df$col2)
setdiff(df$col1, df$col2)
length(setdiff(df$col1, df$col2))
interaction(df$col1, df$col2)