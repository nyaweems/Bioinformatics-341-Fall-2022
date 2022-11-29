# Author: Weems, Date: Oct 26, 2022, Purpose: To generate a phylogenetic tree

# Load the tree packages

library(ape);
library(phangorn);
library(phytools);
library(geiger)

# Read and write csv file
setwd("/Users/nyaweems/Desktop")

# To read only the csv files
data &lt;- read.csv(&quot;Book1.csv&quot;, header=FALSE)

# To read only text files formats rtf or txt

data &lt;- read.delim(&quot;Book1.rtf&quot;, header=FALSE)</div></pre>