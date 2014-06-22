#==============================================================#
#   ASSIGNMENT FOR THE COURSE OF 'GETTING AND CLEANING DATA'   #
#==============================================================#



# First, I set my working directory and I control if it exists

setwd("C:/Documents and Settings/Sofia Cividini/Desktop/UCI HAR Dataset")
file.exists("C:/Documents and Settings/Sofia Cividini/Desktop/UCI HAR Dataset")
library(plyr)


# ...... STEP 1 ...... #

# 1) I open the files in the folder called 'test' and I merge them together
# to create the data set called data.test1
# 2) I open the files in the folder called 'train' and I merge them together
# to create the data set called data.train1
# 3) I merge these two new data sets and I create an unique large data set 
# called data.total


X_test <- read.table("C:/Documents and Settings/Sofia Cividini/Desktop/UCI HAR Dataset/test/X_test.txt")
X_test <- edit(X_test)
y_test <- read.table("C:/Documents and Settings/Sofia Cividini/Desktop/UCI HAR Dataset/test/y_test.txt")
y_test <- edit(y_test)
subject_test <- read.table("C:/Documents and Settings/Sofia Cividini/Desktop/UCI HAR Dataset/test/subject_test.txt")
subject_test <- edit(subject_test)

data.test1 <- cbind(subject_test, y_test, X_test)
data.test1 <- edit(data.test1)


X_train <- read.table("C:/Documents and Settings/Sofia Cividini/Desktop/UCI HAR Dataset/train/X_train.txt")
X_train <- edit(X_train)
y_train <- read.table("C:/Documents and Settings/Sofia Cividini/Desktop/UCI HAR Dataset/train/y_train.txt")
y_train <- edit(y_train)
subject_train <- read.table("C:/Documents and Settings/Sofia Cividini/Desktop/UCI HAR Dataset/train/subject_train.txt")
subject_train <- edit(subject_train)

data.train1 <- cbind(subject_train, y_train, X_train)
data.train1 <- edit(data.train1)


# data.total consists of 563 columns and 10299 rows 

data.total <- rbind(data.test1, data.train1)

# I rename the first two columns as ID for the subjects and activity for the
# subject's activity

names(data.total)[1] <- "ID"
names(data.total)[2] <- "activity"

data.total <- edit(data.total)



# ...... STEP 2 ...... #


# I open the file features.txt

features <- read.table("C:/Documents and Settings/Sofia Cividini/Desktop/UCI HAR Dataset/features.txt")
features <- edit(features)

# I use pattern matching to identify the measurements on the mean mean( )and 
# the sdt( )
  
data.mean <- grep("mean\\(\\)", features$V2)
data.mean
data.std <- grep("std\\(\\)", features$V2)
data.std


# I extract only the measurement on the mean and standard deviation for
# each measurement

# I take only the columns from 3 to 563 into data.total because they match 
# with my measurements into data.mean and data.std

data1 <- data.total[ ,3:563]
data1 <- edit(data1)

# I extract the colums corresponding to mean() and std()from data1

data.m.tot <- data1[ ,c(data.mean)]  # mean()
data.m.tot <- edit(data.m.tot)
data.std.tot <- data1[ ,c(data.std)] # std()
data.std.tot <- edit(data.std.tot)

# Now, I take only the first two columns into data.total and I unit them to
# data.m.tot and data.std.tot which have the mesurements of my interest about
# means and standard deviations

data2 <- data.total[ ,1:2]
data2 <- edit(data2)

data.total.1 <- cbind(data2,data.m.tot, data.std.tot)

# order data.total.1 per ID and activity
data.total.1 <- arrange(data.total.1, ID, activity)
data.total.1 <- edit(data.total.1)


#.............................. STEP 3 ....................................


# I open the file activity_labels.txt

activity_labels <- read.table("C:/Documents and Settings/Sofia Cividini/Desktop/UCI HAR Dataset/activity_labels.txt")
activity_labels 

# I recodify the variable activity

data.total.1[,"activity"]<-factor(data.total.1[,"activity"],
labels=c("WALKING","WALKING_UPSTAIRS"," WALKING_DOWNSTAIRS","SITTING",
         "STANDING","LAYING"))
data.total.1 <- edit(data.total.1)



#.............................. STEP 4 ....................................


# I open the file features.txt

features <- read.table("C:/Documents and Settings/Sofia Cividini/Desktop/UCI HAR Dataset/features.txt")
features <- edit(features)

# I use pattern matching to identify the measurements on the mean mean( )and 
# the sdt( )
  
data.mean <- grep("mean\\(\\)", features$V2)
data.mean
data.std <- grep("std\\(\\)", features$V2)
data.std

# I create a list with the variable's names about mean()

features.1 <- list(features[c(data.mean), 2])
features.1 
class(features.1)
names(data.total.1)[3:35] <- c(
"tBodyAcc-mean()-X","tBodyAcc-mean()-Y",          
"tBodyAcc-mean()-Z","tGravityAcc-mean()-X",       
"tGravityAcc-mean()-Y","tGravityAcc-mean()-Z",       
"tBodyAccJerk-mean()-X","tBodyAccJerk-mean()-Y",      
"tBodyAccJerk-mean()-Z","tBodyGyro-mean()-X",         
"tBodyGyro-mean()-Y","tBodyGyro-mean()-Z",         
"tBodyGyroJerk-mean()-X","tBodyGyroJerk-mean()-Y",     
"tBodyGyroJerk-mean()-Z","tBodyAccMag-mean()",         
"tGravityAccMag-mean()","tBodyAccJerkMag-mean()",     
"tBodyGyroMag-mean()","tBodyGyroJerkMag-mean()",    
"fBodyAcc-mean()-X","fBodyAcc-mean()-Y",          
"fBodyAcc-mean()-Z","fBodyAccJerk-mean()-X",      
"fBodyAccJerk-mean()-Y","fBodyAccJerk-mean()-Z",      
"fBodyGyro-mean()-X","fBodyGyro-mean()-Y",         
"fBodyGyro-mean()-Z","fBodyAccMag-mean()",         
"fBodyBodyAccJerkMag-mean()","fBodyBodyGyroMag-mean()",    
"fBodyBodyGyroJerkMag-mean()")


# I create a list with the variable's names about std()

features.2 <- list(features[c(data.std), 2])
features.2 
names(data.total.1)[36:68] <- c(
"tBodyAcc-std()-X","tBodyAcc-std()-Y",          
"tBodyAcc-std()-Z","tGravityAcc-std()-X",       
"tGravityAcc-std()-Y","tGravityAcc-std()-Z",       
"tBodyAccJerk-std()-X","tBodyAccJerk-std()-Y",      
"tBodyAccJerk-std()-Z","tBodyGyro-std()-X",         
"tBodyGyro-std()-Y","tBodyGyro-std()-Z",         
"tBodyGyroJerk-std()-X","tBodyGyroJerk-std()-Y",     
"tBodyGyroJerk-std()-Z","tBodyAccMag-std()",         
"tGravityAccMag-std()","tBodyAccJerkMag-std()",     
"tBodyGyroMag-std()","tBodyGyroJerkMag-std()",    
"fBodyAcc-std()-X","fBodyAcc-std()-Y",          
"fBodyAcc-std()-Z","fBodyAccJerk-std()-X",      
"fBodyAccJerk-std()-Y","fBodyAccJerk-std()-Z",      
"fBodyGyro-std()-X","fBodyGyro-std()-Y",         
"fBodyGyro-std()-Z","fBodyAccMag-std()",         
"fBodyBodyAccJerkMag-std()","fBodyBodyGyroMag-std()",    
"fBodyBodyGyroJerkMag-std()")

# I control all was right.
data.total.1 <- edit(data.total.1)



#.............................. STEP 5 ....................................


# I calculate the mean of each measurement within subjects and each their 
# single activity, so that we have to get:
# 6 activities per subject * 30 subjects = 180 records 

data.tidy <- aggregate(.~activity*ID, FUN=mean, data=data.total.1)
data.tidy
data.tidy <- edit(data.tidy)

# I save the data set called data.tidy; this data set consists of 68 columns
# and 180 rows.

write.table(data.tidy, "C:/Documents and Settings/Sofia Cividini/Desktop/tidydata.txt")

# Please, read the data set in R as follows:

tidydata <- read.table("C:/Documents and Settings/Sofia Cividini/Desktop/tidydata.txt")
tidydata <- edit(tidydata)





