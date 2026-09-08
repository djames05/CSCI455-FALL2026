#Dihon James, Date: 09/03/2026,Purpose: Regression Class Assignment 1


#import dummy dataset
training_data <- airquality

#remove all rows which has "NA" fields.
training_data <- airquality[complete.cases(airquality), ]

#plot the data as a scatter plot for variables "Ozone" and 
Day". Print predictions and paste at the end of R file OzoneVSday.R

>scatter.smooth(x=training_data$Ozone, y=training_data$Day, main="OzoneVSDay")

#Create a training dataset with 50 split
>training_dataset <- training_data[1:55,] 
test_dataset <- training_data[56:110,]

#Creating reression model on Ozone and Day
>regression_model <- lm(Ozone ~ Day, data=training_dataset)

# Predict the relationship between Ozone and Day
>prediction_result <- predict(regression_model, test_dataset)

# Results of prediction
prediction_result
      89       90       91       92       93       94       95       99 
35.18095 34.91597 34.65100 34.38602 42.33531 42.07033 41.80535 40.74545 
     100      101      104      105      106      108      109      110 
40.48047 40.21550 39.42057 39.15559 38.89062 38.36066 38.09569 37.83071 
     111      112      113      114      116      117      118      120 
37.56573 37.30076 37.03578 36.77081 36.24085 35.97588 35.71090 35.18095 
     121      122      123      124      125      126      127      128 
34.91597 34.65100 34.38602 42.33531 42.07033 41.80535 41.54038 41.27540 
     129      130      131      132      133      134      135      136 
41.01042 40.74545 40.48047 40.21550 39.95052 39.68554 39.42057 39.15559 
     137      138      139      140      141      142      143      144 
38.89062 38.62564 38.36066 38.09569 37.83071 37.56573 37.30076 37.03578 
     145      146      147      148      149      151      152 

#4. upload ozonevsday.r and OzoneVSDay.pdf to recieve full points.


