# Author: Weems, Date: Nov 2, 2022, Purpose: To generate a phylogenetic tree




#load tree packages

library(ape); 

library(phangorn);

library(phytools);

library(geiger);




# Read and write 

setwd("Users/nyaweems")

data <- read.csv("Book1.csv", header=FALSE)

data




# Writing data to a .csv file

list <- c(1,2,3,4,5,6)




write.csv(list, "new_file.csv")

write.table(list, "new_file.txt")

# readxl package library has functions for reading xls files with multiple sheets

# Generate some dummy teee data

text.string <- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);"

text.string

# read tree using read.tree function

vert.tree<-read.tree(text=text.string)

plot(vert.tree,no.margin=TRUE,edge.width=2)
