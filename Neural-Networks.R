# Author: Dihon James, Date: 10/08/2026, Purpose: Set up a Neural Network

#load the package caret
library(caret)

#upload dummy dataset for training
dataset <- iris

#Split the dataset into training and testing groups
validation_index<-createDataPartition(dataset$Species,p=0.80,list=FALSE)

validation <- dataset[-validation_index,]
dataset <- dataset[validation_index,]