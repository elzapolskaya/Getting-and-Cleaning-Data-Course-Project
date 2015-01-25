##Codebook for Course Project (Getting & Cleaning Data)

### Data transformation

The raw data sets are processed with run_analisys.R script to create a tidy data set.

### Data Set
* The tidy data set contains the mean and std values of each subject and each activity.
* The data set is stored as a txt file using one space (" ") as the delimiter.
* The first line of the data is the variable name of the data.

### Variables

The tidy data set contains 180 observations of 81 variables:
* Subject: an identifier of the subject who carried out the experiment (1:30)
* Activity_Label: an activity label (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
* a 79 features vector with time and frequency domain signal variables (numeric values [-1;1]):

*Time Domain:  
tBodyAcc_mean_X  
tBodyAcc_mean_Y  
tBodyAcc_mean_Z  
tBodyAcc_std_X  
tBodyAcc_std_Y  
tBodyAcc_std_Z  
tGravityAcc_mean_X  
tGravityAcc_mean_Y  
tGravityAcc_mean_Z  
tGravityAcc_std_X  
tGravityAcc_std_Y  
tGravityAcc_std_Z  
tBodyAccJerk_mean_X  
tBodyAccJerk_mean_Y  
tBodyAccJerk_mean_Z  
tBodyAccJerk_std_X  
tBodyAccJerk_std_Y  
tBodyAccJerk_std_Z  
tBodyGyro_mean_X  
tBodyGyro_mean_Y  
tBodyGyro_mean_Z  
tBodyGyro_std_X  
tBodyGyro_std_Y  
tBodyGyro_std_Z  
tBodyGyroJerk_mean_X  
tBodyGyroJerk_mean_Y  
tBodyGyroJerk_mean_Z  
tBodyGyroJerk_std_X  
tBodyGyroJerk_std_Y  
tBodyGyroJerk_std_Z  
tBodyAccMag_mean_  
tBodyAccMag_std_  
tGravityAccMag_mean_  
tGravityAccMag_std_  
tBodyAccJerkMag_mean_  
tBodyAccJerkMag_std_  
tBodyGyroMag_mean_  
tBodyGyroMag_std_  
tBodyGyroJerkMag_mean_  
tBodyGyroJerkMag_std_

*Frequency Domain:  
fBodyAcc_mean_X  
fBodyAcc_mean_Y  
fBodyAcc_mean_Z  
fBodyAcc_std_X  
fBodyAcc_std_Y  
fBodyAcc_std_Z  
fBodyAcc_meanFreq_X  
fBodyAcc_meanFreq_Y  
fBodyAcc_meanFreq_Z  
fBodyAccJerk_mean_X  
fBodyAccJerk_mean_Y  
fBodyAccJerk_mean_Z  
fBodyAccJerk_std_X  
fBodyAccJerk_std_Y  
fBodyAccJerk_std_Z  
fBodyAccJerk_meanFreq_X  
fBodyAccJerk_meanFreq_Y  
fBodyAccJerk_meanFreq_Z  
fBodyGyro_mean_X  
fBodyGyro_mean_Y  
fBodyGyro_mean_Z  
fBodyGyro_std_X  
fBodyGyro_std_Y  
fBodyGyro_std_Z  
fBodyGyro_meanFreq_X  
fBodyGyro_meanFreq_Y  
fBodyGyro_meanFreq_Z  
fBodyAccMag_mean_  
fBodyAccMag_std_  
fBodyAccMag_meanFreq_  
fBodyBodyAccJerkMag_mean_  
fBodyBodyAccJerkMag_std_  
fBodyBodyAccJerkMag_meanFreq_  
fBodyBodyGyroMag_mean_  
fBodyBodyGyroMag_std_  
fBodyBodyGyroMag_meanFreq_  
fBodyBodyGyroJerkMag_mean_  
fBodyBodyGyroJerkMag_std_  
fBodyBodyGyroJerkMag_meanFreq_

The set of variables that were estimated from signals are: 
* mean(): Mean value
* std(): Standard deviation

### Summary

The summary made in creating this dataset based on the HAR data were dictated primarily by the instructions of the assignment.
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Each of the 81 variables above from the HAR data is averaged (mean) across all observations for each subject-activity pair. Result - in a total of 180 observations (30 subjects x 6 activities)