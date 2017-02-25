# Preprocessing
# Clean up environment in RStudio
rm(list = ls(all = TRUE))
# Preload the necessary packages for the data analysis
library(plyr) 
library(data.table) 
library(dplyr) 
# Download the zip file in a temporary folder
dataset<- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", dataset)
# Unzip the file with a list of variables that can be used for fetching the data
unzip(dataset, list = TRUE) 
# Load the data set into the RStudio
y_test <- read.table(unzip(dataset, "UCI HAR Dataset/test/y_test.txt"))
x_test <- read.table(unzip(dataset, "UCI HAR Dataset/test/X_test.txt"))
subject_test <- read.table(unzip(dataset, "UCI HAR Dataset/test/subject_test.txt"))
y_train <- read.table(unzip(dataset, "UCI HAR Dataset/train/y_train.txt"))
x_train <- read.table(unzip(dataset, "UCI HAR Dataset/train/X_train.txt"))
subject_train <- read.table(unzip(dataset, "UCI HAR Dataset/train/subject_train.txt"))
features <- read.table(unzip(dataset, "UCI HAR Dataset/features.txt"))
activitie_labels <- read.table(unzip(dataset, "UCI HAR Dataset/activity_labels.txt"))

# Remove the temporary file
unlink(dataset) 

# Step 1
# Merge the training and test sets to create one data set.
# This will be done for 'x', 'y' and ‘subject' data sets
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)


# Step 2
# Extract only the mean and standard deviation for each measurement
# rename columns with mean() or std()
mean_and_std <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the desired columns and correct the column names
x_data <- x_data[, mean_and_std]
names(x_data) <- features[mean_and_std, 2]

# Step 3
# Use descriptive activity names to name the activities in the data set
# update values with correct activity names and rename column name

y_data[, 1] <- activitie_labels[y_data[, 1], 2]
names(y_data) <- "Activity"

# Step 4
# Appropriately label the data set with descriptive variable names
# Rename column name and bind all the datas into a single data set
names(subject_data) <- "Subject"
full_data <- cbind(x_data, y_data, subject_data)

# Step 5
# Create a second, independent tidy data set with the average of each variable for each activity and each subject. Skip the last two columns (Activity & Subject)
averages <- ddply(full_data, .(Subject, Activity), function(x) colMeans(x[, 1:66]))
write.table(averages, "tidy.txt", row.name=FALSE, quote = FALSE)
