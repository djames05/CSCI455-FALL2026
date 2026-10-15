# Author: Dihon James, Date: 10/15/2026, Purpose: Assignment 3

# load the package caret
library(caret)

# upload dummy dataset for training
dataset <- iris

# Split the dataset into training (60%) and testing (40%) groups
set.seed(7)  # added so the split is reproducible
validation_index <- createDataPartition(dataset$Species, p = 0.60, list = FALSE)

validation <- dataset[-validation_index, ]
dataset    <- dataset[validation_index, ]

# Setting a variable for Accuracy measure
control <- trainControl(method = "cv", number = 10)
metric  <- "Accuracy"

# Train the model using LDA / Linear Discriminant Analysis
set.seed(7)
fit.lda <- train(Species ~ ., data = dataset, method = "lda",
                 metric = metric, trControl = control)

# predictions on the validation dataset
predictions <- predict(fit.lda, validation)
confusionMatrix(predictions, validation$Species)


Confusion Matrix and Statistics

            Reference
Prediction   setosa versicolor virginica
  setosa         20          0         0
  versicolor      0         19         0
  virginica       0          1        20

Overall Statistics
                                          
               Accuracy : 0.9833          
                 95% CI : (0.9106, 0.9996)
    No Information Rate : 0.3333          
    P-Value [Acc > NIR] : < 2.2e-16       
                                          
                  Kappa : 0.975           
                                          
 Mcnemar's Test P-Value : NA              

Statistics by Class:

                     Class: setosa Class: versicolor Class: virginica
Sensitivity                 1.0000            0.9500           1.0000
Specificity                 1.0000            1.0000           0.9750
Pos Pred Value              1.0000            1.0000           0.9524
Neg Pred Value              1.0000            0.9756           1.0000
Prevalence                  0.3333            0.3333           0.3333
Detection Rate              0.3333            0.3167           0.3333
Detection Prevalence        0.3333            0.3167           0.3500
Balanced Accuracy           1.0000            0.9750           0.9875
> 

