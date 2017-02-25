
# Code Book

Description
=================

The features selected for this data frame came from the transformation of the data in the "Human Activity Recognition Using Smartphones Dataset Version 1.0", which in turn have been taken from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz data were captured, of accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

These signals were used to estimate variables of the feature vector for each pattern:  
-XYZ is used to denote 3-axial signals in the X, Y and Z directions.

This code book listed all the resulting data fields in `tidy.txt`.


## Identifier columns

* Subject - List the test subjects ID
* Activity - List the type of activity performed

## Measurement columns

* tBodyAccmean()X
* tBodyAccmean()Y
* tBodyAccmean()Z
* tBodyAccstd()X
* tBodyAccstd()Y
* tBodyAccstd()Z
* tGravityAccmean()X
* tGravityAccmean()Y
* tGravityAccmean()Z
* tGravityAccstd()X
* tGravityAccstd()Y
* tGravityAccstd()Z
* tBodyAccJerkmean()X
* tBodyAccJerkmean()Y
* tBodyAccJerkmean()Z
* tBodyAccJerkstd()X
* tBodyAccJerkstd()Y
* tBodyAccJerkstd()Z
* tBodyGyromean()X
* tBodyGyromean()Y
* tBodyGyromean()Z
* tBodyGyrostd()X
* tBodyGyrostd()Y
* tBodyGyrostd()Z
* tBodyGyroJerkmean()X
* tBodyGyroJerkmean()Y
* tBodyGyroJerkmean()Z
* tBodyGyroJerkstd()X
* tBodyGyroJerkstd()Y
* tBodyGyroJerkstd()Z
* tBodyAccMagmean()
* tBodyAccMagstd()
* tGravityAccMagmean()
* tGravityAccMagstd()
* tBodyAccJerkMagmean()
* tBodyAccJerkMagstd()
* tBodyGyroMagmean()
* tBodyGyroMagstd()
* tBodyGyroJerkMagmean()
* tBodyGyroJerkMagstd()
* fBodyAccmean()X
* fBodyAccmean()Y
* fBodyAccmean()Z
* fBodyAccstd()X
* fBodyAccstd()Y
* fBodyAccstd()Z
* fBodyAccJerkmean()X
* fBodyAccJerkmean()Y
* fBodyAccJerkmean()Z
* fBodyAccJerkstd()X
* fBodyAccJerkstd()Y
* fBodyAccJerkstd()Z
* fBodyGyromean()X
* fBodyGyromean()Y
* fBodyGyromean()Z
* fBodyGyrostd()X
* fBodyGyrostd()Y
* fBodyGyrostd()Z
* fBodyAccMagmean()
* fBodyAccMagstd()
* fBodyBodyAccJerkMagmean()
* fBodyBodyAccJerkMagstd()
* fBodyBodyGyroMagmean()
* fBodyBodyGyroMagstd()
* fBodyBodyGyroJerkMagmean()
* fBodyBodyGyroJerkMagstd()

mean() : 	mean values of multiple measurements of the original values.
			Type: Real number
		
std(): 	Standard deviation of multiple measurements of the original values.
			Type: Real number

Activity: 	Descriptive name for each activity
			Type: 	Factor
			Values: WALKING, WALKING_UPSTAIRS, 
				    WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Subject:	 identify each subject
			Type: 	Integer
			Values: 	1 : 30
