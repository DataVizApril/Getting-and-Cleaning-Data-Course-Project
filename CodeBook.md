
## Data desctiptions
The dataset includes the following files:
- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

## Data Transformtion

1. Load test and train data and merge them into one data using rbind() function.

2. Extract mean_and_std relevant features names from features.txt using grep() function and regular expression.

3. Label whole date with appropriate suject and activity names.

4. Calculate the mean value for each variable for each activity and each subject.
 For example, 
 
  "activity" "subject" "tBodyAcc-mean()-X"
  
  "LAYING" 1 0.22159824394
 
 ## Variables
 
 activity_labels: 
  - 1 WALKING
  
  - 2 WALKING_UPSTAIRS
  
  - 3 WALKING_DOWNSTAIRS
  
  - 4 SITTING
  
  - 5 STANDING
  
  - 6 LAYING
  
 feature_info:
  
  These signals were used to estimate variables of the feature vector for each pattern:  
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

  - tBodyAcc-XYZ
  tGravityAcc-XYZ
  tBodyAccJerk-XYZ
  tBodyGyro-XYZ
  tBodyGyroJerk-XYZ
  tBodyAccMag
  tGravityAccMag
  tBodyAccJerkMag
  tBodyGyroMag
  tBodyGyroJerkMag
  fBodyAcc-XYZ
  fBodyAccJerk-XYZ
  fBodyGyro-XYZ
  fBodyAccMag
  fBodyAccJerkMag
  fBodyGyroMag
  fBodyGyroJerkMag
  

  The set of variables that were estimated from these signals are: 

  mean(): Mean value
  std(): Standard deviation
 
 
  


