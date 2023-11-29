Getting and Cleaning Data - Course Project
==========================================

# Codebook for Tidy Data from Human Activity Recognition Using Smartphones Dataset

## Data Source
The data used in this analysis is obtained from the "Human Activity Recognition Using Smartphones Dataset," available at UCI Machine Learning Repository.

## Variables
- ### Subject
    * Description: Identifier for the subject who performed the activity.
    * Type: Factor
    * Range: 1 to 30
- ### Activity
    * Description: Type of activity performed by the subject.
    * Type: Factor
    * Labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- ### Measurements
The remaining variables are the calculated means and standard deviations of the corresponding data sets. Although a detailed explanation of each data value is not provided, its meaning can be inferred by comparing it to the original data column:

tBodyAccMeanX, tBodyAccMeanY, tBodyAccMeanZ, tBodyAccStdX, tBodyAccStdY, tBodyAccStdZ, tGravityAccMeanX, tGravityAccMeanY, tGravityAccMeanZ, tGravityAccStdX, tGravityAccStdY, tGravityAccStdZ, tBodyAccJerkMeanX, tBodyAccJerkMeanY, tBodyAccJerkMeanZ, tBodyAccJerkStdX, tBodyAccJerkStdY, tBodyAccJerkStdZ, tBodyGyroMeanX, tBodyGyroMeanY, tBodyGyroMeanZ, tBodyGyroStdX, tBodyGyroStdY, tBodyGyroStdZ, tBodyGyroJerkMeanX, tBodyGyroJerkMeanY, tBodyGyroJerkMeanZ, tBodyGyroJerkStdX, tBodyGyroJerkStdY, tBodyGyroJerkStdZ, tBodyAccMagMean, tBodyAccMagStd, tGravityAccMagMean, tGravityAccMagStd, tBodyAccJerkMagMean, tBodyAccJerkMagStd, tBodyGyroMagMean, tBodyGyroMagStd, tBodyGyroJerkMagMean, tBodyGyroJerkMagStd, fBodyAccMeanX, fBodyAccMeanY, fBodyAccMeanZ, fBodyAccStdX, fBodyAccStdY, fBodyAccStdZ, fBodyAccJerkMeanX, fBodyAccJerkMeanY, fBodyAccJerkMeanZ, fBodyAccJerkStdX, fBodyAccJerkStdY, fBodyAccJerkStdZ, fBodyGyroMeanX, fBodyGyroMeanY, fBodyGyroMeanZ, fBodyGyroStdX, fBodyGyroStdY, fBodyGyroStdZ, fBodyAccMagMean, fBodyAccMagStd, fBodyBodyAccJerkMagMean, fBodyBodyAccJerkMagStd, fBodyBodyGyroMagMean, fBodyBodyGyroMagStd, fBodyBodyGyroJerkMagMean, fBodyBodyGyroJerkMagStd

    * Description: Mean and Standard Deviation of various time and frequency domain signals obtained from the accelerometer and gyroscope.
    * Type: Numeric
    * Units: Standardized units

- ### Summary Calculations
The tidy dataset contains the average of each variable for each subject and each activity.

- ### Data Transformation Details
    * Activity: The activity variable has been factorized using the provided activity labels.
    * Subject: The subject variable has been converted to a factor.
    * Data Format: The original data was transformed from a wide format to a long format using the melt function from the reshape2 package.
    * Aggregation: The data was aggregated using the dcast function from the reshape2 package to calculate the mean for each variable, grouped by subject and activity.

- ### Output
The processed and aggregated data is saved as "tidy_dataset.txt" in the "E:/data" directory.
