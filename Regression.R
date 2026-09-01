#Dihon James, Date:08/25/26,Purpose: Test the Regression Analysis

#Import dummy dataset
training_data <- mtcars

#Plot the data as a scatter plot
scatter.smooth(x=training_data$disp, y=training_data$wt, main="SpeedVSdistance")

#50% split--Underfitting
#70% split---------------Assignment
#90% split--Overfitting-------------Assignment

#Create a training dataset with 50 person split
training_dataset <- training_data[1:16,] 
#comma means split on the rows [,1:16] want to split on column
test_dataset <- training_data[17:32,]

#Create a training dataset with 70 person split
training_dataset <- training_data[1:24,] 
test_dataset <- training_data[25:32,]

#Create a training dataset with 90 person split
training_dataset <- training_data[1:28,] 
test_dataset <- training_data[29:32,]

#Creating reression model on mpg and wt of car
regression_model <- lm(mpg ~ wt, data=training_dataset)

# Predict the relationship between mpg and weight of the car on test dataset using our generated regression model.
prediction_result <- predict(regression_model, test_dataset)

# Results of prediction
actuals_prediction_values

