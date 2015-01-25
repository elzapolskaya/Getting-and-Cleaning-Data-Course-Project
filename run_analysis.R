require("data.table")
require("reshape2")
require("stringr")

## Load: activity labels
act_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
act_labels<-act_labels[,2]

## Load: data column names
features <- read.table("./UCI HAR Dataset/features.txt")
features<- features[,2]

## Extract only the measurements on the mean and standard deviation for each measurement.
extract_features <- grepl("mean|std", features)

## Load and process X_test & y_test data.
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

names(X_test) <- make.names(features)
names(X_test) <- str_replace_all(make.names(features), "(\\.)+", "_")
## Extract only the measurements on the mean and standard deviation for each measurement.
X_test <- X_test[,extract_features]

## Load activity labels
y_test[,2] <- act_labels[y_test[,1]]
names(y_test) <- c("Activity_ID", "Activity_Label")
names(subject_test) <- "Subject"

## Bind data
test_data <- cbind(as.data.table(subject_test), y_test, X_test)

## Load and process X_train & y_train data.
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

names(X_train) <- make.names(features)
names(X_train) <- str_replace_all(make.names(features), "(\\.)+", "_")
## Extract only the measurements on the mean and standard deviation for each measurement.
X_train <- X_train[,extract_features]

## Load activity data
y_train[,2] <- act_labels[y_train[,1]]
names(y_train) <- c("Activity_ID", "Activity_Label")
names(subject_train) <- "Subject"

## Bind data
train_data <- cbind(as.data.table(subject_train), y_train, X_train)

## Merge test and train data
data <- rbind(test_data, train_data)

id_labels <- c("Subject", "Activity_ID", "Activity_Label")
data_labels <- setdiff(colnames(data), id_labels)
melt_data <- melt(data, id = id_labels, measure.vars = data_labels)

## Apply mean function to dataset using dcast function
tidy_data <- dcast(melt_data, Subject + Activity_Label ~ variable, mean)

## Write file in the working directory
write.table(tidy_data, file = "./t_data.txt", row.names=FALSE)
#write.table(tidy_data, file = "./t_dataF.txt")
message("The file t_data.txt was saved in working directory")
