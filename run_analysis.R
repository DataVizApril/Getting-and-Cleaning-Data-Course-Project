library(dplyr)
library(plyr)


setwd("C:/Users/mqzhang/Desktop/DataScience/GettingAndCleaningData/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset")
#Read test data

subject_test <- read.table("test/subject_test.txt")

#- 'test/X_test.txt': Test set.
X_test <- read.table("test/X_test.txt")

#- 'test/y_test.txt': Test labels.
Y_test <- read.table("test/Y_test.txt")


#Read train data

subject_train <- read.table("train/subject_train.txt")

#'train/X_train.txt': Training set.
X_train <- read.table("train/X_train.txt")

#'train/y_train.txt': Training labels.
Y_train <- read.table("train/Y_train.txt")

#1.Merges the training and the test sets to create one data set.

subject <- rbind(subject_test,subject_train)

X <- rbind(X_test,X_train)
Y <- rbind(Y_test,Y_train)

#allData <- cbind(subject, X, Y)


#2.Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("features.txt")

# . any character
# * any times of match
mean_and_std <- (grep(".*mean.*|.*std.*", features$V2))

# Select this "mean_and_std" row and second column data : [mean_and_std,2]
mean_and_std.names <- features[mean_and_std,2]

X_mean_and_std <- X[,mean_and_std]

names(X_mean_and_std) <- mean_and_std.names

#3.Uses descriptive activity names to name the activities in the data set

activity <- read.table("activity_labels.txt")

names(Y) <- "activity"

Y[,1] <-  activity[Y[,1],2] 


#4.Appropriately labels the data set with descriptive variable names.

names(subject) <- "subject"


all_data <- cbind(X_mean_and_std, Y, subject)

#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

average_all_data <- ddply(all_data, .(activity, subject), function(x) colMeans(x[,1:79]))

write.table(average_all_data, "tidy_data.txt",row.names = FALSE)



