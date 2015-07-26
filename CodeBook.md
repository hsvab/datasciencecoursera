TASK 1
The objective of TASK 1 is to merge the train dataset and the test datasets in order to create only one dataset.

The following steps were done:
- Read and rename features names
- Read activity labels data (y_*.txt files)
- Rename train_labels and test_labels
- Read subject files
- Rename train_subject and test_subject
- Read dataset
- Merge test_ files and train_ files
- Merge test and train variables


TASK 2
The objective of TASK 2 is to extract only the measurements on the mean and its standard deviation. So, all variables that has mean, Mean, Std or std on the name will be extracted (variable will not be considered because it is a derivated one).

The following steps were done:
- Add the index for the first two columns (subject and activity) on the list of columns to be selected
- Add the index of all columns which the name matches the criteria "mean", "Mean", "Std" or "std"
- Get the index from columns that has "angle" in the name
- Remove the index wich has "angle" on the name from the col_index list
- Filter data with the desired columns

TASK 3
The objective of TASK 3 is to use descriptive activity names to name the activities in the data set

The following steps were done:
- Load the activity_labels file
- Merge activity_labels with the filtered_data by "activity_id" column
- Replace activity_id values with the 'activity' column values
- Rename the "activity_id" with "activity"

TASK 4
The objective is to appropriately label the data set with descriptive variable names, in order to compose tidy data.

- Previous variables names:
"subject"                         - 
"activity"                        - 
"tBodyAcc.mean...X"               - 
"tBodyAcc.mean...Y"               - 
"tBodyAcc.mean...Z"               - 
"tBodyAcc.std...X"                - 
"tBodyAcc.std...Y"                - 
"tBodyAcc.std...Z"                - 
"tGravityAcc.mean...X"            - 
"tGravityAcc.mean...Y"            - 
"tGravityAcc.mean...Z"            - 
"tGravityAcc.std...X"             - 
"tGravityAcc.std...Y"             - 
"tGravityAcc.std...Z"             - 
"tBodyAccJerk.mean...X"           - 
"tBodyAccJerk.mean...Y"           - 
"tBodyAccJerk.mean...Z"           - 
"tBodyAccJerk.std...X"            - 
"tBodyAccJerk.std...Y"            - 
"tBodyAccJerk.std...Z"            - 
"tBodyGyro.mean...X"              - 
"tBodyGyro.mean...Y"              - 
"tBodyGyro.mean...Z"              - 
"tBodyGyro.std...X"               - 
"tBodyGyro.std...Y"               - 
"tBodyGyro.std...Z"               - 
"tBodyGyroJerk.mean...X"          - 
"tBodyGyroJerk.mean...Y"          - 
"tBodyGyroJerk.mean...Z"          - 
"tBodyGyroJerk.std...X"           - 
"tBodyGyroJerk.std...Y"           - 
"tBodyGyroJerk.std...Z"           - 
"tBodyAccMag.mean.."              - 
"tBodyAccMag.std.."               - 
"tGravityAccMag.mean.."           - 
"tGravityAccMag.std.."            - 
"tBodyAccJerkMag.mean.."          - 
"tBodyAccJerkMag.std.."           - 
"tBodyGyroMag.mean.."             - 
"tBodyGyroMag.std.."              - 
"tBodyGyroJerkMag.mean.."         - 
"tBodyGyroJerkMag.std.."          - 
"fBodyAcc.mean...X"               - 
"fBodyAcc.mean...Y"               - 
"fBodyAcc.mean...Z"               - 
"fBodyAcc.std...X"                - 
"fBodyAcc.std...Y"                - 
"fBodyAcc.std...Z"                - 
"fBodyAcc.meanFreq...X"           - 
"fBodyAcc.meanFreq...Y"           - 
"fBodyAcc.meanFreq...Z"           - 
"fBodyAccJerk.mean...X"           - 
"fBodyAccJerk.mean...Y"           - 
"fBodyAccJerk.mean...Z"           - 
"fBodyAccJerk.std...X"            - 
"fBodyAccJerk.std...Y"            - 
"fBodyAccJerk.std...Z"            - 
"fBodyAccJerk.meanFreq...X"       - 
"fBodyAccJerk.meanFreq...Y"       - 
"fBodyAccJerk.meanFreq...Z"       - 
"fBodyGyro.mean...X"              - 
"fBodyGyro.mean...Y"              - 
"fBodyGyro.mean...Z"              - 
"fBodyGyro.std...X"               - 
"fBodyGyro.std...Y"               - 
"fBodyGyro.std...Z"               - 
"fBodyGyro.meanFreq...X"          - 
"fBodyGyro.meanFreq...Y"          - 
"fBodyGyro.meanFreq...Z"          - 
"fBodyAccMag.mean.."              - 
"fBodyAccMag.std.."               - 
"fBodyAccMag.meanFreq.."          - 
"fBodyBodyAccJerkMag.mean.."      - 
"fBodyBodyAccJerkMag.std.."       - 
"fBodyBodyAccJerkMag.meanFreq.."  - 
"fBodyBodyGyroMag.mean.."         - 
"fBodyBodyGyroMag.std.."          - 
"fBodyBodyGyroMag.meanFreq.."     - 
"fBodyBodyGyroJerkMag.mean.."     - 
"fBodyBodyGyroJerkMag.std.."      - 
"fBodyBodyGyroJerkMag.meanFreq.." - 

- New variable names:
"Subject"                         - 
"Activity"                        - 
"Time_Body_Acceleration.mean_X"               - 
"Time_Body_Acceleration.mean_Y"               - 
"Time_Body_Acceleration.mean_Z"               - 
"Time_Body_Acceleration.std_X"                - 
"Time_Body_Acceleration.std_Y"                - 
"Time_Body_Acceleration.std_Z"                - 
"Time_Gravity_Acceleration.mean_X"            - 
"Time_Gravity_Acceleration.mean_Y"            - 
"Time_Gravity_Acceleration.mean_Z"            - 
"Time_Gravity_Acceleration.std_X"             - 
"Time_Gravity_Acceleration.std_Y"             - 
"Time_Gravity_Acceleration.std_Z"             - 
"Time_Body_Acceleration_Jerk.mean_X"           - 
"Time_Body_Acceleration_Jerk.mean_Y"           - 
"Time_Body_Acceleration_Jerk.mean_Z"           - 
"Time_Body_Acceleration_Jerk.std_X"            - 
"Time_Body_Acceleration_Jerk.std_Y"            - 
"Time_Body_Acceleration_Jerk.std_Z"            - 
"Time_Body_Gyroscope.mean_X"              - 
"Time_Body_Gyroscope.mean_Y"              - 
"Time_Body_Gyroscope.mean_Z"              - 
"Time_Body_Gyroscope.std_X"               - 
"Time_Body_Gyroscope.std_Y"               - 
"Time_Body_Gyroscope.std_Z"               - 
"Time_Body_Gyroscope_Jerk.mean_X"          - 
"Time_Body_Gyroscope_Jerk.mean_Y"          - 
"Time_Body_Gyroscope_Jerk.mean_Z"          - 
"Time_Body_Gyroscope_Jerk.std_X"           - 
"Time_Body_Gyroscope_Jerk.std_Y"           - 
"Time_Body_Gyroscope_Jerk.std_Z"           - 
"Time_Body_Acceleration_Magnitude.mean"              - 
"Time_Body_Acceleration_Magnitude.std"               - 
"Time_Gravity_Acceleration_Magnitude.mean"           - 
"Time_Gravity_Acceleration_Magnitude.std"            - 
"Time_Body_Acceleration_Jerk_Magnitude.mean"          - 
"Time_Body_Acceleration_Jerk_Magnitude.std"           - 
"Time_Body_Gyroscope_Magnitude.mean"             - 
"Time_Body_Gyroscope_Magnitude.std"              - 
"Time_Body_Gyroscope_Jerk_Magnitude.mean"         - 
"Time_Body_Gyroscope_Jerk_Magnitude.std"          - 
"Frequency_Body_Acceleration.mean_X"               - 
"Frequency_Body_Acceleration.mean_Y"               - 
"Frequency_Body_Acceleration.mean_Z"               - 
"Frequency_Body_Acceleration.std_X"                - 
"Frequency_Body_Acceleration.std_Y"                - 
"Frequency_Body_Acceleration.std_Z"                - 
"Frequency_Body_Acceleration.mean_frequency_X"           - 
"Frequency_Body_Acceleration.mean_frequency_Y"           - 
"Frequency_Body_Acceleration.mean_frequency_Z"           - 
"Frequency_Body_Acceleration_Jerk.mean_X"           - 
"Frequency_Body_Acceleration_Jerk.mean_Y"           - 
"Frequency_Body_Acceleration_Jerk.mean_Z"           - 
"Frequency_Body_Acceleration_Jerk.std_X"            - 
"Frequency_Body_Acceleration_Jerk.std_Y"            - 
"Frequency_Body_Acceleration_Jerk.std_Z"            - 
"Frequency_Body_Acceleration_Jerk.mean_frequency_X"       - 
"Frequency_Body_Acceleration_Jerk.mean_frequency_Y"       - 
"Frequency_Body_Acceleration_Jerk.mean_frequency_Z"       - 
"Frequency_Body_Gyroscope.mean_X"              - 
"Frequency_Body_Gyroscope.mean_Y"              - 
"Frequency_Body_Gyroscope.mean_Z"              - 
"Frequency_Body_Gyroscope.std_X"               - 
"Frequency_Body_Gyroscope.std_Y"               - 
"Frequency_Body_Gyroscope.std_Z"               - 
"Frequency_Body_Gyroscope.mean_frequency_X"          - 
"Frequency_Body_Gyroscope.mean_frequency_Y"          - 
"Frequency_Body_Gyroscope.mean_frequency_Z"          - 
"Frequency_Body_Acceleration_Magnitude.mean"              - 
"Frequency_Body_Acceleration_Magnitude.std"               - 
"Frequency_Body_Acceleration_Magnitude.mean_frequency"          - 
"Frequency_Body_Body_Acceleration_Jerk_Magnitude.mean"      - 
"Frequency_Body_Body_Acceleration_Jerk_Magnitude.std"       - 
"Frequency_Body_Body_Acceleration_Jerk_Magnitude.mean_frequency"  - 
"Frequency_Body_Body_Gyroscope_Magnitude.mean"         - 
"Frequency_Body_Body_Gyroscope_Magnitude.std"          - 
"Frequency_Body_Body_Gyroscope_Magnitude.mean_frequency"     - 
"Frequency_Body_Body_Gyroscope_Jerk_Magnitude.mean"     - 
"Frequency_Body_Body_Gyroscope_Jerk_Magnitude.std"      - 
"Frequency_Body_Body_Gyroscope_Jerk_Magnitude.mean_frequency" - 

TASK 5
The objective is to create a second, independent tidy data from the data set in task 4.

The following steps were done:



