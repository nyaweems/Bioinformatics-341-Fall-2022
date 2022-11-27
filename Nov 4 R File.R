# Author: Weems, Date: Nov 4, 2022, Purpose: To generate a phylogenetic tree




#load tree packages

library(ape); 

library(phangorn);

library(phytools);

library(geiger);




# Read and write 

setwd("/Users/nyaweems/")

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

use main= aregument to add a name for the plot

#FYI can make round phylogram

roundPhylogram(vert.tree)

plot(unroot(vert.tree),type="unrooted",no.margin=TRUE,lab4ut="axial", edge.width=2)

#FYI use unroot function witih unrooted argument to make unrooted plot

#fyi numbers can be confidence values or distances how close or far the two species are




# Print edges and nodes in your tree

str(vert.tree)
