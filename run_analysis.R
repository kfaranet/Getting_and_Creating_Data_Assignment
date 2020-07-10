# Course 3 Week 4 Peer Graded Project

# Load packages
library(dplyr)
library(data.table)

# Download file from website and unzip in working directory
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "UCI.zip")
unzip("UCI.zip")

# Read in data into data tables
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

# Add activity labels to Y files (later used for row labels)
test_row_labels <- inner_join(Y_test, activity_labels)
train_row_labels <- inner_join(Y_train, activity_labels)

# Create column label vector from features and assign to both X files
col_labels <- features[,2]
colnames(X_test) <- col_labels
colnames(X_train) <- col_labels
colnames(test_row_labels) <- c("act_code","activity")
colnames(train_row_labels) <- c("act_code","activity")
colnames(subject_test) <- c("subject")
colnames(subject_train) <- c("subject")

# Cbind to create Test/Train datasets and then Rbind to combine them
test_dataset <- cbind(subject_test, activity = test_row_labels$activity, X_test)
train_dataset <- cbind(subject_train, activity = train_row_labels$activity, X_train)
combined <- rbind(test_dataset, train_dataset)

# Extract only columns that contain Mean (mean) and Standard Deviation (std)
mean_std <- select(combined, subject, activity, contains("mean()"), contains("std()"))

# Appropriately label the data set with descriptive variable names
colnames(mean_std) <- gsub("-","",colnames(mean_std))
colnames(mean_std) <- gsub("mean\\()","Mean",colnames(mean_std))
colnames(mean_std) <- gsub("std\\()","Std",colnames(mean_std))
colnames(mean_std) <- gsub("^t", "time", colnames(mean_std))
colnames(mean_std) <- gsub("^f", "frequency", colnames(mean_std))
colnames(mean_std) <- gsub("Acc", "Accelerometer", colnames(mean_std))
colnames(mean_std) <- gsub("Gyro", "Gyroscope", colnames(mean_std))
colnames(mean_std) <- gsub("Mag", "Magnitude", colnames(mean_std))
colnames(mean_std) <- gsub("BodyBody", "Body", colnames(mean_std))

# Create second, independent tidy data set with the average of each variable for each activity and each subject
second_tidy <- mean_std %>% group_by(activity, subject) %>% summarize_all(mean)

# Write second tidy data set to .txt file
write.table(second_tidy, "TidyDataSet.txt", row.name = FALSE)