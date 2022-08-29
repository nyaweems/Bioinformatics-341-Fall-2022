#Author: Weems;Datw:08/29/2022;Purpose: Teszting R Script
#Install microarray packages
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("affy")

#Load the package affy
library(affy)

