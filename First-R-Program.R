#Author: Weems;Datw:08/29/2022;Purpose: Teszting R Script
#Install microarray packages
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("affy")





#Load the package affy
library(affy)

#Read CEL microarray files in R using library affy

#Setting the working directory
setwd("/Users/nyaweems/Desktop")

#Read the CEL files from current working directory 
eset <- ReadAffy("GSM18423_PA-D_132.cel")("GSM18422_PA-D_102.cel")("GSM18425_PA-D_216.cel")("GSM18426_PA-D_225.cel")("GSM18424_PA-D_206.cel")

#Extracting expression values using following function
rma <- exprs(eset)

#Boxplot to view the expression of samples
boxplot(rma)

#Pre-processing/Normalization of the chips: Mas5.0, RMA, Quantile Normalization

#Install package oligo and rlang
if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager");BiocManager::install("rlang")
if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager");BiocManager::install("oligo")

#Applying RMA normalization function 
library(rlang)
library(oligo)
celFiles = list.celfiles("/Users/nyaweems/Desktop")
affyRaw <-read.celfiles(celFiles)
eset <- rma(affyRaw)
boxplot(eset)

rma_normalized <- exprs(eset)
Fold_change <- rma_normalized[,1] - rma_normalized[,2]

# Significant Threshold (up-regulated) >1.5 and (Down-regulated) <-1.5








