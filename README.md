Getting and Cleaning Data - Project assignment

1. Download the data file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to working directory as temp file, then unzip to folder "UCI HAR Dataset".
2. Create a R script file called run_analysis.R that does the following.
Preparation:
The plyr, data.table and dplyr packages have been used for the data analysis. The data set was downloaded from website http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip as zip file. The zip file was extracted into folder "UCI HAR Dataset". 
The data sets were loaded into Rstudio as following variables:
y_test for y_test,txt
x_test for X_test.txt
subject_test for subject_test.txt
y_train for y_train.txt
x_train for X_train.txt
subject_train for subject_train.txt
features for features.txt
activity_labels for activity_labels.txt

For the following operations:
a.) Merges the training and the test sets to create one data set.
Use rind() function to combine the train and test data sets as x_data, y_data and subject_data 
b.) Extracts only the measurements on the mean and standard deviation for each measurement.
Use grep() function to find mean and std column names, subset x_data with the column names and rename according to the features file.
c.) Uses descriptive activity names to name the activities in the data set
Use the activity labels from the file to name the y_data under Column name "Activity".
d.) Appropriately labels the data set with descriptive variable names.
Use "Subject" column name to describe subject_data. Combine to create a full data set with x_data, y_data and subject_data.
e.) From the data set in step d, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Apply ddply() function to full data set and colMeans() function to get the mean value for each activity and subject.
Use write.table() function to write the tidy data to the tidy.txt file.
