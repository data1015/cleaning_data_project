# Code Book for Coursera Cleaning Data Project Data
## Project Notes: 
* Assumptions have been made based on the project requirements.
* Knowledge of this data and its interpretation is limited to the data in these files.

## Source: - from README.txt file for dataset

Human Activity Recognition Using Smartphones Dataset; version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

##License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

==========================
## Feature_info.txt information

Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt' in the dataset files.

=====================================================================

# Data elements contained in the tidy data set file: tidy_data_feature_mean_by_subject_activity.txt

##Subject_ID (number from 1-30 for 30 subjects)

##Activity_Name (Activity Labels):
* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

##Feature Column Names:
|	Feature	|	Column Name	|
|	Feature	|	Column Name	|
|	--------------------------	|	--------------------------	|
|	tBodyAcc-mean()-X	|	tBodyAcc-mean_-X	|
|	tBodyAcc-mean()-Y	|	tBodyAcc-mean_-Y	|
|	tBodyAcc-mean()-Z	|	tBodyAcc-mean_-Z	|
|	tBodyAcc-std()-X	|	tBodyAcc-std_-X	|
|	tBodyAcc-std()-Y	|	tBodyAcc-std_-Y	|
|	tBodyAcc-std()-Z	|	tBodyAcc-std_-Z	|
|	tGravityAcc-mean()-X	|	tGravityAcc-mean_-X	|
|	tGravityAcc-mean()-Y	|	tGravityAcc-mean_-Y	|
|	tGravityAcc-mean()-Z	|	tGravityAcc-mean_-Z	|
|	tGravityAcc-std()-X	|	tGravityAcc-std_-X	|
|	tGravityAcc-std()-Y	|	tGravityAcc-std_-Y	|
|	tGravityAcc-std()-Z	|	tGravityAcc-std_-Z	|
|	tBodyAccJerk-mean()-X	|	tBodyAccJerk-mean_-X	|
|	tBodyAccJerk-mean()-Y	|	tBodyAccJerk-mean_-Y	|
|	tBodyAccJerk-mean()-Z	|	tBodyAccJerk-mean_-Z	|
|	tBodyAccJerk-std()-X	|	tBodyAccJerk-std_-X	|
|	tBodyAccJerk-std()-Y	|	tBodyAccJerk-std_-Y	|
|	tBodyAccJerk-std()-Z	|	tBodyAccJerk-std_-Z	|
|	tBodyGyro-mean()-X	|	tBodyGyro-mean_-X	|
|	tBodyGyro-mean()-Y	|	tBodyGyro-mean_-Y	|
|	tBodyGyro-mean()-Z	|	tBodyGyro-mean_-Z	|
|	tBodyGyro-std()-X	|	tBodyGyro-std_-X	|
|	tBodyGyro-std()-Y	|	tBodyGyro-std_-Y	|
|	tBodyGyro-std()-Z	|	tBodyGyro-std_-Z	|
|	tBodyGyroJerk-mean()-X	|	tBodyGyroJerk-mean_-X	|
|	tBodyGyroJerk-mean()-Y	|	tBodyGyroJerk-mean_-Y	|
|	tBodyGyroJerk-mean()-Z	|	tBodyGyroJerk-mean_-Z	|
|	tBodyGyroJerk-std()-X	|	tBodyGyroJerk-std_-X	|
|	tBodyGyroJerk-std()-Y	|	tBodyGyroJerk-std_-Y	|
|	tBodyGyroJerk-std()-Z	|	tBodyGyroJerk-std_-Z	|
|	tBodyAccMag-mean()	|	tBodyAccMag-mean_	|
|	tBodyAccMag-std()	|	tBodyAccMag-std_	|
|	tGravityAccMag-mean()	|	tGravityAccMag-mean_	|
|	tGravityAccMag-std()	|	tGravityAccMag-std_	|
|	tBodyAccJerkMag-mean()	|	tBodyAccJerkMag-mean_	|
|	tBodyAccJerkMag-std()	|	tBodyAccJerkMag-std_	|
|	tBodyGyroMag-mean()	|	tBodyGyroMag-mean_	|
|	tBodyGyroMag-std()	|	tBodyGyroMag-std_	|
|	tBodyGyroJerkMag-mean()	|	tBodyGyroJerkMag-mean_	|
|	tBodyGyroJerkMag-std()	|	tBodyGyroJerkMag-std_	|
|	fBodyAcc-mean()-X	|	fBodyAcc-mean_-X	|
|	fBodyAcc-mean()-Y	|	fBodyAcc-mean_-Y	|
|	fBodyAcc-mean()-Z	|	fBodyAcc-mean_-Z	|
|	fBodyAcc-std()-X	|	fBodyAcc-std_-X	|
|	fBodyAcc-std()-Y	|	fBodyAcc-std_-Y	|
|	fBodyAcc-std()-Z	|	fBodyAcc-std_-Z	|
|	fBodyAccJerk-mean()-X	|	fBodyAccJerk-mean_-X	|
|	fBodyAccJerk-mean()-Y	|	fBodyAccJerk-mean_-Y	|
|	fBodyAccJerk-mean()-Z	|	fBodyAccJerk-mean_-Z	|
|	fBodyAccJerk-std()-X	|	fBodyAccJerk-std_-X	|
|	fBodyAccJerk-std()-Y	|	fBodyAccJerk-std_-Y	|
|	fBodyAccJerk-std()-Z	|	fBodyAccJerk-std_-Z	|
|	fBodyGyro-mean()-X	|	fBodyGyro-mean_-X	|
|	fBodyGyro-mean()-Y	|	fBodyGyro-mean_-Y	|
|	fBodyGyro-mean()-Z	|	fBodyGyro-mean_-Z	|
|	fBodyGyro-std()-X	|	fBodyGyro-std_-X	|
|	fBodyGyro-std()-Y	|	fBodyGyro-std_-Y	|
|	fBodyGyro-std()-Z	|	fBodyGyro-std_-Z	|
|	fBodyAccMag-mean()	|	fBodyAccMag-mean_	|
|	fBodyAccMag-std()	|	fBodyAccMag-std_	|
|	fBodyBodyAccJerkMag-mean()	|	fBodyBodyAccJerkMag-mean_	|
|	fBodyBodyAccJerkMag-std()	|	fBodyBodyAccJerkMag-std_	|
|	fBodyBodyGyroMag-mean()	|	fBodyBodyGyroMag-mean_	|
|	fBodyBodyGyroMag-std()	|	fBodyBodyGyroMag-std_	|
|	fBodyBodyGyroJerkMag-mean()	|	fBodyBodyGyroJerkMag-mean_	|
|	fBodyBodyGyroJerkMag-std()	|	fBodyBodyGyroJerkMag-std_	|
