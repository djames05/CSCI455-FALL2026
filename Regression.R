#Dihon James, Date:08/25/26,Purpose: Test the Regression Analysis

#Import dummy dataset
training_data <- mtcars

#Plot the data as a scatter plot
scatter.smooth(x=training_data$disp, y=training_data$wt, main="SpeedVSdistance")