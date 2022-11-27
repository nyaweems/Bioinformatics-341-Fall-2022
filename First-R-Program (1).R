#Author: Weems; Date: 08/29/2022; Purpose: Testing R script

# Install microarray packages
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("affy")

# Load the package affy
library(affy)

# Read CEL microarray files in R using library affy

# Setting the working directory
setwd("/Users/NyaWeems/Desktop")

# Read the CEL files from current working directory
eset <- ReadAffy()

# Extracting expression values using following function
rma <- exprs(eset)

# Boxplot to view the expression of samples
boxplot(rma)

# Pre-processing/Normalization of the chips: Mas5.0, RMA, Quantile Normalization

# Install package oligo
if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager");BiocManager::install("oligo")

# Applying RMA normalizaton function
library(oligo)
celFiles = list.celfiles()
affyRaw <- read.celfiles(celFiles)
eset <- rma(affyRaw)
boxplot(eset)
