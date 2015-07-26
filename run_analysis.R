# TASK 1

# Read and rename features names
features = read.table('data/features.txt')
names(features) = c('featureID', 'featureName')

# Read activity labels data (y_*.txt files)
train_labels = read.table('data/train/y_train.txt')
test_labels = read.table('data/test/y_test.txt')

# Rename train_labels and test_labels
names(test_labels) = c('activity')
names(train_labels) = c('activity')

# Read subject files
train_subject = read.table('data/train/subject_train.txt')
test_subject = read.table('data/test/subject_test.txt')

# Rename train_subject and test_subject
names(train_subject) = c('subject')
names(test_subject) = c('subject')

# Read dataset
xtrain_file = 'data/train/X_train.txt'
train_Xset = read.table(xtrain_file, col.names = features$featureName)
xtest_file = 'data/test/X_test.txt'
test_Xset = read.table(xtest_file, col.names = features$featureName)

# Merge test_ files and train_ files
train = cbind(train_subject, train_labels, train_Xset)
test = cbind(test_subject, test_labels, test_Xset)

# Merge test and train variables
full_data = rbind(test, train)

# TASK 2

# Add the index for the first two columns (subject and activity) on the list of columns to be selected
col_index = c(1,2)

# Add the index of all columns which the name matches the criteria "mean", "Mean", "Std" or "std"
col_index = c(col_index, grep('([Mm]ean)|([Ss]td)',names(full_data)))

# Get the index from columns that has "angle" in the name
to_remove = grep('angle', names(full_data))

# Remove the index wich has "angle" on the name from the col_index list
col_index = col_index[! col_index %in% to_remove]

# Filter data
filtered_data = full_data[,col_index]


# TASK 3

# Load the activity_labels file
activity_labels = read.table('data/activity_labels.txt', col.names = c('id','activity'))

# Merge activity_labels with the filtered_data by 'activity_id' column
merged_df = merge(filtered_data, activity_labels, by.x='activity_id', by.y='id')

# Replace activity_id values with the "activity" column values
filtered_data$activity_id = merged_df$activity

# Rename the "activity_id" with "activity"
names(filtered_data)[names(filtered_data) == 'activity_id'] <- 'activity'

# TASK 4

# Make tidy data
names(filtered_data) = c("Subject", 
                         "Activity", 
                         "Time_Body_Acceleration.mean_X", 
                         "Time_Body_Acceleration.mean_Y", 
                         "Time_Body_Acceleration.mean_Z", 
                         "Time_Body_Acceleration.std_X", 
                         "Time_Body_Acceleration.std_Y", 
                         "Time_Body_Acceleration.std_Z", 
                         "Time_Gravity_Acceleration.mean_X", 
                         "Time_Gravity_Acceleration.mean_Y", 
                         "Time_Gravity_Acceleration.mean_Z", 
                         "Time_Gravity_Acceleration.std_X", 
                         "Time_Gravity_Acceleration.std_Y", 
                         "Time_Gravity_Acceleration.std_Z", 
                         "Time_Body_Acceleration_Jerk.mean_X", 
                         "Time_Body_Acceleration_Jerk.mean_Y", 
                         "Time_Body_Acceleration_Jerk.mean_Z", 
                         "Time_Body_Acceleration_Jerk.std_X", 
                         "Time_Body_Acceleration_Jerk.std_Y", 
                         "Time_Body_Acceleration_Jerk.std_Z", 
                         "Time_Body_Gyroscope.mean_X", 
                         "Time_Body_Gyroscope.mean_Y", 
                         "Time_Body_Gyroscope.mean_Z", 
                         "Time_Body_Gyroscope.std_X", 
                         "Time_Body_Gyroscope.std_Y", 
                         "Time_Body_Gyroscope.std_Z", 
                         "Time_Body_Gyroscope_Jerk.mean_X", 
                         "Time_Body_Gyroscope_Jerk.mean_Y", 
                         "Time_Body_Gyroscope_Jerk.mean_Z", 
                         "Time_Body_Gyroscope_Jerk.std_X", 
                         "Time_Body_Gyroscope_Jerk.std_Y", 
                         "Time_Body_Gyroscope_Jerk.std_Z", 
                         "Time_Body_Acceleration_Magnitude.mean", 
                         "Time_Body_Acceleration_Magnitude.std", 
                         "Time_Gravity_Acceleration_Magnitude.mean", 
                         "Time_Gravity_Acceleration_Magnitude.std", 
                         "Time_Body_Acceleration_Jerk_Magnitude.mean", 
                         "Time_Body_Acceleration_Jerk_Magnitude.std", 
                         "Time_Body_Gyroscope_Magnitude.mean", 
                         "Time_Body_Gyroscope_Magnitude.std", 
                         "Time_Body_Gyroscope_Jerk_Magnitude.mean", 
                         "Time_Body_Gyroscope_Jerk_Magnitude.std", 
                         "Frequency_Body_Acceleration.mean_X", 
                         "Frequency_Body_Acceleration.mean_Y", 
                         "Frequency_Body_Acceleration.mean_Z", 
                         "Frequency_Body_Acceleration.std_X", 
                         "Frequency_Body_Acceleration.std_Y", 
                         "Frequency_Body_Acceleration.std_Z", 
                         "Frequency_Body_Acceleration.mean_frequency_X", 
                         "Frequency_Body_Acceleration.mean_frequency_Y", 
                         "Frequency_Body_Acceleration.mean_frequency_Z", 
                         "Frequency_Body_Acceleration_Jerk.mean_X", 
                         "Frequency_Body_Acceleration_Jerk.mean_Y", 
                         "Frequency_Body_Acceleration_Jerk.mean_Z", 
                         "Frequency_Body_Acceleration_Jerk.std_X", 
                         "Frequency_Body_Acceleration_Jerk.std_Y", 
                         "Frequency_Body_Acceleration_Jerk.std_Z", 
                         "Frequency_Body_Acceleration_Jerk.mean_frequency_X", 
                         "Frequency_Body_Acceleration_Jerk.mean_frequency_Y", 
                         "Frequency_Body_Acceleration_Jerk.mean_frequency_Z", 
                         "Frequency_Body_Gyroscope.mean_X", 
                         "Frequency_Body_Gyroscope.mean_Y", 
                         "Frequency_Body_Gyroscope.mean_Z", 
                         "Frequency_Body_Gyroscope.std_X", 
                         "Frequency_Body_Gyroscope.std_Y", 
                         "Frequency_Body_Gyroscope.std_Z", 
                         "Frequency_Body_Gyroscope.mean_frequency_X", 
                         "Frequency_Body_Gyroscope.mean_frequency_Y", 
                         "Frequency_Body_Gyroscope.mean_frequency_Z", 
                         "Frequency_Body_Acceleration_Magnitude.mean", 
                         "Frequency_Body_Acceleration_Magnitude.std", 
                         "Frequency_Body_Acceleration_Magnitude.mean_frequency", 
                         "Frequency_Body_Body_Acceleration_Jerk_Magnitude.mean", 
                         "Frequency_Body_Body_Acceleration_Jerk_Magnitude.std", 
                         "Frequency_Body_Body_Acceleration_Jerk_Magnitude.mean_frequency", 
                         "Frequency_Body_Body_Gyroscope_Magnitude.mean", 
                         "Frequency_Body_Body_Gyroscope_Magnitude.std", 
                         "Frequency_Body_Body_Gyroscope_Magnitude.mean_frequency", 
                         "Frequency_Body_Body_Gyroscope_Jerk_Magnitude.mean", 
                         "Frequency_Body_Body_Gyroscope_Jerk_Magnitude.std", 
                         "Frequency_Body_Body_Gyroscope_Jerk_Magnitude.mean_frequency")

# TASK 5
