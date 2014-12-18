# Create a directory to save the data files
if (!getwd() == "./Smartphones_Data_Set") 
  {
     dir.create("./Smartphones_Data_Set")
  }

# Download and unzip ADL(activities of daily living) data
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data.zip")) { download.file(fileUrl,destfile="./data.zip") }
unzip("./data.zip", exdir="./Smartphones_Data_Set")

# Read Training and Test data sets and labels as the data that identifies the subject who performed the activity
X_Test <- read.table("./Smartphones_Data_Set/UCI HAR Dataset/test/X_test.txt")
Y_Test <- read.table("./Smartphones_Data_Set/UCI HAR Dataset/test/y_test.txt")
Subject_Test <- read.table("./Smartphones_Data_Set/UCI HAR Dataset/test/subject_test.txt")

X_Train <- read.table("./Smartphones_Data_Set/UCI HAR Dataset/train/X_train.txt")
Y_Train <- read.table("./Smartphones_Data_Set/UCI HAR Dataset/train/y_train.txt")
Subject_Train <- read.table("./Smartphones_Data_Set/UCI HAR Dataset/train/subject_train.txt")

# Read the list of variables of each feature vector
Features <- read.table("./Smartphones_Data_Set/UCI HAR Dataset/features.txt")

# Assign variable names to the Train and Test columns based on the list provided in file: features.txt
# We take the names from the second column, i.e. "V2"
colnames(X_Train) <- t(Features[2])
colnames(X_Test) <- t(Features[2])

# Add a column to identify the type of activity and the volunteer ID who performed the test
X_Train$Activities <- Y_Train[, 1]
X_Train$Participants <- Subject_Train[, 1]
X_Test$Activities <- Y_Test[, 1]
X_Test$Participants <- Subject_Test[, 1]

# Both sets of data are merged
Merge_Data <- rbind(X_Train, X_Test)

# Check for duplicate column names and merged them
d<-duplicated(colnames(Merge_Data))
length(d[d==FALSE])
Merge_Data_D<- Merge_Data[, !duplicated(colnames(Merge_Data))]

# Get the relevat column names related to mean and std measurements only
Mean_Data_vector <- grep("mean()", names(Merge_Data_D), value = FALSE, fixed = TRUE)
Std_Data_vector <- grep("std()", names(Merge_Data_D), value = FALSE)

# Take a quick look at the first 3 rows of the merged data
head(Merge_Data_D)[1:3,470:479]

# It is observed that there are few columns (from 471 to 477) that supply mean data for angle measurement
# It is assumed that this data is also relevant for the mean calculations and they are added to the data set
Mean_Data_vector <- append(Mean_Data_vector, 471:477)

# Two separate sets are created for mean and std data
Mean_Data <- Merge_Data_D[Mean_Data_vector]
Std_Data <- Merge_Data_D[Std_Data_vector]

# Numerical values in the Activity column are converted to labels describing the six human activities
Merge_Data_D$Activities <- as.character(Merge_Data_D$Activities)
Merge_Data_D$Activities[Merge_Data_D$Activities == 1] <- "Walking"
Merge_Data_D$Activities[Merge_Data_D$Activities == 2] <- "Walking Upstairs"
Merge_Data_D$Activities[Merge_Data_D$Activities == 3] <- "Walking Downstairs"
Merge_Data_D$Activities[Merge_Data_D$Activities == 4] <- "Sitting"
Merge_Data_D$Activities[Merge_Data_D$Activities == 5] <- "Standing"
Merge_Data_D$Activities[Merge_Data_D$Activities == 6] <- "Laying"
Merge_Data_D$Activities <- as.factor(Merge_Data_D$Activities)

head(Merge_Data_D, n=3)

# Numerical values in the Participant column are converted to labels indicating the subject who performed such activity  
Merge_Data_D$Participants<- as.character(Merge_Data_D$Participants)
Merge_Data_D$Participants[Merge_Data_D$Participants== 1] <- "Subject 1"
Merge_Data_D$Participants[Merge_Data_D$Participants== 2] <- "Subject 2"
Merge_Data_D$Participants[Merge_Data_D$Participants== 3] <- "Subject 3"
Merge_Data_D$Participants[Merge_Data_D$Participants== 4] <- "Subject 4"
Merge_Data_D$Participants[Merge_Data_D$Participants== 5] <- "Subject 5"
Merge_Data_D$Participants[Merge_Data_D$Participants== 6] <- "Subject 6"
Merge_Data_D$Participants[Merge_Data_D$Participants== 7] <- "Subject 7"
Merge_Data_D$Participants[Merge_Data_D$Participants== 8] <- "Subject 8"
Merge_Data_D$Participants[Merge_Data_D$Participants== 9] <- "Subject 9"
Merge_Data_D$Participants[Merge_Data_D$Participants== 10] <- "Subject 10"
Merge_Data_D$Participants[Merge_Data_D$Participants== 11] <- "Subject 11"
Merge_Data_D$Participants[Merge_Data_D$Participants== 12] <- "Subject 12"
Merge_Data_D$Participants[Merge_Data_D$Participants== 13] <- "Subject 13"
Merge_Data_D$Participants[Merge_Data_D$Participants== 14] <- "Subject 14"
Merge_Data_D$Participants[Merge_Data_D$Participants== 15] <- "Subject 15"
Merge_Data_D$Participants[Merge_Data_D$Participants== 16] <- "Subject 16"
Merge_Data_D$Participants[Merge_Data_D$Participants== 17] <- "Subject 17"
Merge_Data_D$Participants[Merge_Data_D$Participants== 18] <- "Subject 18"
Merge_Data_D$Participants[Merge_Data_D$Participants== 19] <- "Subject 19"
Merge_Data_D$Participants[Merge_Data_D$Participants== 20] <- "Subject 20"
Merge_Data_D$Participants[Merge_Data_D$Participants== 21] <- "Subject 21"
Merge_Data_D$Participants[Merge_Data_D$Participants== 22] <- "Subject 22"
Merge_Data_D$Participants[Merge_Data_D$Participants== 23] <- "Subject 23"
Merge_Data_D$Participants[Merge_Data_D$Participants== 24] <- "Subject 24"
Merge_Data_D$Participants[Merge_Data_D$Participants== 25] <- "Subject 25"
Merge_Data_D$Participants[Merge_Data_D$Participants== 26] <- "Subject 26"
Merge_Data_D$Participants[Merge_Data_D$Participants== 27] <- "Subject 27"
Merge_Data_D$Participants[Merge_Data_D$Participants== 28] <- "Subject 28"
Merge_Data_D$Participants[Merge_Data_D$Participants== 29] <- "Subject 29"
Merge_Data_D$Participants[Merge_Data_D$Participants== 30] <- "Subject 30"
Merge_Data_D$Participants<- as.factor(Merge_Data_D$Participants)

head(Merge_Data_D, n=3)

# Some abbreviations such as Acc and Gyro are changed to the full name, for clarity
names(Merge_Data_D) <- gsub("Acc", "Acceleration", names(Merge_Data_D))
names(Merge_Data_D) <- gsub("Mag", "Magnitude", names(Merge_Data_D))
names(Merge_Data_D) <- gsub("Gyro", "Gyroscope", names(Merge_Data_D))
names(Merge_Data_D) <- gsub("^t", "time", names(Merge_Data_D))
names(Merge_Data_D) <- gsub("^f", "frequency", names(Merge_Data_D))

head(Merge_Data_D)[1:3,470:480]

# Select only the columns that have mean, std, Participants or Activity
Merge_Data_D_MS <- Merge_Data_D[, grep("mean|std|Participants|Activities", names(Merge_Data_D))]

# Load the data.table package to create a Table
library(data.table) 
Tidy_Data <- data.table(Merge_Data_D_MS)
head(Tidy_Data)

# Calculate average of the measurements. 
# This is done with multiple aggregation via lapply(.SD, mean) by Activities and Participants columns
Tidy_Data_AvgCalc <- Tidy_Data[, lapply(.SD, mean), by = 'Participants,Activities']
head(Tidy_Data_AvgCalc)

# Order the table by Participant ID
library(gtools)
Tidy_Data_AvgCalc_Ordered<- Tidy_Data_AvgCalc[mixedorder(Tidy_Data_AvgCalc$Participants), ]

# Write out a text file for the processed data
write.table(Tidy_Data_AvgCalc, file = "./Smartphones_Data_Set/TidyDataSet.txt", row.names = FALSE)
