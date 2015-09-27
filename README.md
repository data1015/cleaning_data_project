# cleaning_data_project
##Project respository for the Coursera Getting and Cleaning Data Course

The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

##Dataset:
* The data files are from "Human Activity Recognition Using Smartphones Dataset", version 1. The data consists of information (features) collected from smartphones for 30 subjects who performed six activities. The data files are split across a number of files that are merged, labeled, melted and recast to allow mean calculations for the selected features.
* See the CodeBook.md for details.

##Project Steps:
* Submit a tidy data set as described below
* Link to a Github repository with your script for performing the analysis
* Prepare a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data (CodeBook.md).

##Files in this respository:
* Code for this project is an R script: run_analysis.R in this respository
* The tidy data created is located in the file: tidy_data_feature_mean_by_subject_activity.txt
* The code book is located in the file: CodeBook.md

##Script Requirements:
The R script does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Approach:
* The features include measurements from several sensors on the smartphones. The requirement is to extract the measurements on the mean and standard deviation for each measurement. There are 561 measurements provided. 33 of these measurements included "mean()" in their name. 33 different measurements included "std()" in their name. These two sets of 33 measurements had identical names except for the "mean()" or "std() suffix. 20 additional measurements contained "mean" without "()". Given that there were 33 matched pairs of "mean()" and "std()" measurements, these 66 features were extracted for analysis.
* The feature names were changed minimally to maximize the mapping between the source feature labels.
* However, rhe feature names included parentheses and commmas, which are not valid R variable names. read.table converts these characters to "." if the column names are provided. To distinguish the "()" in the tidy data, "(" are pre-converted to "_" and ")" are removed. read.table converts the commas to dots. Thus it is straighforward to map the column names to the source feature labels.

##Methodology:
* The data files are read in with read.table
* Feature names are processed before the measurements so that the data columns can be properly set
* The choice was made to keep intermediate steps in separate data frames. Although these steps could have been optimized and/or compacted for efficiency, maintaining separate data frames makes it easier to debug and verify intermediate steps.
* Feature, subject and activity data was combined using cbind and rbind since no common fields were required.
* Activitity names were added using merge based on the commnon Activity_ID
* The dplyr package select was used select the desired columns from the merged data.
* The reshape2 package (melt/dcast) was used to create the tidy data set with the subject/activity means. Although the mean could be calculated by totals and counts of the feature measurements, dcast provides a more general way to summarize data using different functions. This approach seemed more flexible and extensible.
