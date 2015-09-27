# cleaning_data_project
##Project respository for the Coursera Getting and Cleaning Data Course

The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

Steps taken:
* Submit a tidy data set as described below
* Link to a Github repository with your script for performing the analysis
* Prepare a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data (CodeBook.md).

The code for this project is an R script: run_analysis.R
This script does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The tidy data is located in a file: tidy_data_mean_aggregate.txt, also located in this directory.
The Code Book is located in a file: CodeBook
