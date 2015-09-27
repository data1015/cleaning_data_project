# cleaning_data_project
##Project respository for the Coursera Getting and Cleaning Data Course

The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

##Dataset:
The data files are from "Human Activity Recognition Using Smartphones Dataset", version 1. The data consists of information (features) collected from smartphones for 30 subjects who performed six activities. The data files are split across a number of files that are merged, labeled, melted and recast to allow mean calculations for the selected features.

##Project Steps:
* Submit a tidy data set as described below
* Link to a Github repository with your script for performing the analysis
* Prepare a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data (CodeBook.md).

##Files in this respository:
* Code for this project is an R script: run_analysis.R in this respository
* The tidy data created is located in a file: tidy_data_mean_aggregate.txt
* The code book is located in a file: CodeBook.md - also located in this directory.

##Script Requirements:
This script does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Approach:
* The features include measurements from several sensors on the smartphones. The requirement is to extract the measurements on the mean and standard deviation for each measurement. There are 561 measurements provided. 33 of these measurements included "mean()" in their name. 33 different measurements included "std()" in their name. These two sets of 33 measurements had identical names except for the "mean()" or "std() suffix. 20 additional measurements contained "mean" without "()". Given that there were 33 matched pairs of "mean()" and "std()" measurements, these 66 features were extracted for analysis.
* The feature names included parentheses and commmas, which are not valid R variable names. read.table converts these characters to "." if the column names are provided. To distinguish the "()" in the tidy data, "(" are pre-converted to "_" and ")" are removed. read.table converts the commas to dots.
* 
