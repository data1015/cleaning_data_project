#run_analysis.R

# See readme.md file for more information on the approach and methodology.

## This script does the following:
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Assumptions
#1. working directory is set to the base directory where the script is located.
#2. data files are under a data folder
#3. within the data folder, test and training data are in respective sub-folders

##Approach:
# The features include measurements from several sensors on the smartphones.
# The requirement is to extract the measurements on the mean and standard deviation for each measurement.
# There are 561 measurements provided. 33 of these measurements included "mean()" in their name.
# 33 different measurements included "std()" in their name.
# These two sets of 33 measurements had identical names except for the "mean()" or "std() suffix.
# 20 additional measurements contained "mean" without "()".
# Given that there were 33 matched pairs of "mean()" and "std()" measurements, these 66 features were extracted for analysis.
# The feature names were changed minimally to maximize the mapping between the source feature labels.
# However, the feature names included parentheses, dashes and commmas, which are not valid R variable names.
# read.table converts these characters to "." if the column names are provided.
# To distinguish the "()" in the tidy data, "(" are pre-converted to "_" and ")" are removed.
# read.table converts the commas and dashes to dots.
# Thus it is straighforward to map the column names to the source feature labels.

## Methodology:
# The data files are read in with read.table
# Feature names are processed before the measurements so that the data columns can be properly set
# The choice was made to keep intermediate steps in separate data frames. Although these steps could have been optimized and/or compacted for efficiency, maintaining separate data frames makes it easier to debug and verify intermediate steps.
# Feature, subject and activity data was combined using cbind and rbind since no common fields were required.
# Activitity names were added using merge based on the commnon Activity_ID
# The dplyr package select was used select the desired columns from the merged data.
# The reshape2 package (melt/dcast) was used to create the tidy data set with the subject/activity means. Although the mean could be calculated by totals and counts of the feature measurements, dcast provides a more general way to summarize data using different functions. This approach seemed more flexible and extensible.

######################################################

# read table of activity labels
activities <- read.table("data/activity_labels.txt",stringsAsFactors=FALSE,col.names=c("Activity_ID","Activity_Name"))

# read table of feature labels, replace "(" with "_", delete ")"
features <- read.table("data/features.txt",stringsAsFactors=FALSE)
feature_names <- gsub(")","",gsub("(","_",features$V2,fixed=TRUE),fixed=TRUE)

# set row limit for faster testing; -1 for full data processing
rowlimit<- -1

# read test data: features, Activity_ID and Subject_ID
testx <- read.table("data/test/X_test.txt",nrows=rowlimit,col.names=feature_names)
testy <- read.table("data/test/y_test.txt",nrows=rowlimit,col.names=c("Activity_ID"))
testsubj <- read.table("data/test/subject_test.txt",nrows=rowlimit,col.names=c("Subject_ID"))

# read training data: features,Activity_ID and Subject_ID
trainx <- read.table("data/train/X_train.txt",nrows=rowlimit,col.names=feature_names,skip=1)
trainy <- read.table("data/train/y_train.txt",nrows=rowlimit,col.names=c("Activity_ID"))
trainsubj <- read.table("data/train/subject_train.txt",nrows=rowlimit,col.names=c("Subject_ID"))

# add activity_ID and Subject_ID to test & training data
testxy <- cbind(testx,testy,testsubj)
trainxy <- cbind(trainx,trainy,trainsubj)

# combine test and training data, Activity_Names, and Subject_ID
dataxy1 <- rbind(testxy,trainxy)
dataxy2 <- merge(dataxy1,activities)

# select columns with mean_ and std_, Activity_ID, Activity_Name and Subject_ID
data_mean_std <-select(dataxy2,contains("mean_"),contains("std_"),contains("activity"),contains("subject_ID"))

# get feature names for mean calculation - only mean or std
feature_names_mean_std <- grep("mean|std",names(data_mean_std),value=TRUE)

# melt dataframe - create row element for each feature
id_names <- c("Subject_ID","Activity_ID","Activity_Name")

data_melt <- melt(data_mean_std, id=id_names, measure.vars=feature_names_mean_std,variable.name="feature_name")

# create a data set with averages of each mean and std dev set of semples for each Subject_ID/Activity_Name

feature_mean_by_subject_activity <- dcast(data_melt, Subject_ID + Activity_Name ~feature_name, mean)

# write mean data to txt file:
write.table(feature_mean_by_subject_activity,file="tidy_data_feature_mean_by_subject_activity.txt",row.name=FALSE)

#done!

