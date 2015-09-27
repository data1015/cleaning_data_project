# cleaning_data_project
##Project respository for the Coursera Getting and Cleaning Data Course

The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

##Files in this respository:
* Code for this project is an R script: run_analysis.R in this respository
* The tidy data created is located in the file: tidy_data_feature_mean_by_subject_activity.txt
* The code book is located in the file: CodeBook.md

##Dataset:
* The data files are from "Human Activity Recognition Using Smartphones Dataset", version 1. The data consists of information (features) collected from smartphones for 30 subjects who performed six activities. The data files are split across a number of files that are merged, labeled, melted and recast to allow mean calculations for the selected features.
* See the CodeBook.md for details.

##Project Steps:
* Submit a tidy data set as described below
* Link to a Github repository with your script for performing the analysis
* Prepare a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data (CodeBook.md).

##Script Requirements:
The R script does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* See the script file for details on the approach and methodology
