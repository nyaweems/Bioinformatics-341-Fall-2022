# Author: Weems, Date: Oct 26, 2022, Purpose: To generate a phylogenetic tree

# Load the tree packages

library(ape);
library(phangorn);
library(phytools);
library(geiger)

# Read and write csv file
setwd("/Users/nyaweems/desktop")

# To read only the csv files
data &lt;- read.csv(&quot;Book1.csv&quot;, header=FALSE)

# To read only text files formats rtf or txt

data &lt;- read.delim(&quot;Book1.rtf&quot;, header=FALSE)

# Write the data in a csv file

list &lt;- c(1,2,3,4,5,6)

write.csv(list, &quot;new_file.csv&quot;)

write.table(list, &quot;new_file.txt&quot;)

# Generate some dummy tree data

text.string &lt;- &quot;(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);&quot;

# read tree using read.tree function

vert.tree&lt;-read.tree(text=text.string)

plot(vert.tree,no.margin=TRUE,edge.width=2,
main=&quot;This is phylogenetic plot&quot;)

roundPhylogram(vert.tree)

# Generate a unrooted tree plot 

plot(unroot(vert.tree),type=&quot;unrooted&quot;,no.margin=TRUE,lab4ut=&quot;axial&quot;, edge.width=2)

# Print edges and nodes in your tree

str(vert.tree)

# Write the tree in a text file

write.tree(vert.tree,file=&quot;example.txt&quot;)

# Reading the exported data

Data &lt;- read.table(&quot;example.txt&quot;, header = FALSE, sep = &quot;&quot;, dec = &quot;.&quot;)