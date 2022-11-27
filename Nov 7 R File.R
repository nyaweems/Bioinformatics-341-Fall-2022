# Author: Weems, Date: Nov 7, 2022, Purpose: To generate a phylogenetic tree




#load tree packages

library(ape);

library(phangorn);

library(phytools);

library(geiger);




 

setwd("/Users/nyaweems/")







# Generate some dummy teee data

text.string <- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);"







# read tree using read.tree function

vert.tree<-read.tree(text=text.string)




# Write tree date to .txt file

write.tree(vert.tree,file="example.txt")




# Reading the exported data

Data <- read.table("example.txt", header = False, sep = "", dec = ".")

Data
