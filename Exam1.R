Author: Weems, Date: Oct 5 2022, Purpose: Exam 1

# Reading the .CEL file

setwd("/Users/nyaweems/Desktop")

library(affy)

Data <-ReadAffy()

boxplot(Data)

normalized_data <- rma(Data)

normalized_data <- exprs(normalized_data)