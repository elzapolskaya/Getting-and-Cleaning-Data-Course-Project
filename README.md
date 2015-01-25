## README

### Course Project

You should create one R script called run_analysis.R that does the following.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### About the Code Book

CodeBook.md file contains a description of transformations of the data and variables.

### Steps to work on this course project

* Download the data source and put into a folder on your working directory. You'll have a UCI HAR Dataset folder. Get the working directory you can use the function getwd(), set your working directory using setwd() function in RStudio.
* Put run_analysis.R in the parent folder of UCI HAR Dataset.
* Run source("run_analysis.R").
* Open t_data.txt, which was recorded in the working directory.