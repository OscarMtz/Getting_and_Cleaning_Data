Project: Analysis of a Human Activity Recognition Database
=========================

JOHN HOPKINS UNIVERSTY THROUGH COURSERA. December 1st - December 31st, 2014 . Oscar Portillo

This work analyses the Human Activity Recognition Database from Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto at Smartlab - Non Linear Complex Systems Laboratory (website: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ). 
The database contains records of activities of daily living (ADL) from 30 subjects, carrying a waist-mounted smartphone with embedded inertial sensors.
An R script called run_analysis.R is provided in this repository. The script does the following tasks: 

Task 1. - Merges the training and the test sets to create one data set.

The data is preprocessed first, the zip files is downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The file is saved in a local directory called "./Smartphones_Data_Set"  in the working directory. The file is unzipped.  

Tables are created with Training and Test data sets files (X_test.txt, y_test.txt, X_train.txt, y_train.txt ) as well as the data that identifies the subject who performed the activity subject_test.txt, subject_train.txt")

The file that lists all the measurements conducted in the test (features.txt) is also read. It will be used to assign labels to the columns in the Test/Train data. Two columns are added to the X_Train and X_Test tables so that the type of activity and participant ID are included in the data file. Finally, both sets of data are merged via rbind command.

Task 2.- Extracts only the measurements on the mean and standard deviation for each measurement.

First, duplicate column names are checked and merged. The relevant columns are fetch based on the strings “mean()” and “std”. Taking a quick look at the merged table, it can be observed that there are 7 additional measurements that involve mean calculation (columns 471 to 477). They are related to angle measures. It is assumed that these data point are relevant for the analysis, so they are appended to the merged file. 

Task 3. Uses descriptive activity names to name the activities in the data set

Data in Activity column are converted from numerical values to labels describing the six human activities: "Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", and "Laying".

Task 4. Appropriately labels the data set with descriptive variable names

Two changes of labels are conducted:

A)	Data in Participant column are converted from ID values to labels indicating the subject who performed such activity: "Subject 1", "Subject 2", .. ,"Subject 30".

B)	Selected abbreviations such as Acc and Gyro are changed to the full name, for clarity. For example, "Acc" is renamed as "Acceleration". 

Task 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Only columns with string names: mean, std, Participants and Activities are subset in dataset. The average is calculated with the function lapply(.SD, mean) by multiple aggregate in  Activities and Participants columns. We observed that the resulting data contains 180 observations, this is correct since we have 6 activity types and 30 participants, so 6x30=180. The processed data is order using the function “mixorder()” from the “gtools” package. Finally, a text file is written out, the name of the file is TidyDataSet.txt and can be found in this repository. 

The reader is referred to the Code Book, also included in the repository, for a list of variables and labels employed in this work.

Thanks for reading!!

Oscar
