Cleaning-and-Getting-Data
=========================

Assignment for the Course of Cleaning and Getting data.


 ... STEP 1: merges the training and the test sets to create one data set ..............
 
 
 My FIRST SCRIPT does the following things:  


1) It opens the 'test' data sets and it merges them together to create the data set called data.test1
2) It opens the 'training' data sets and it merges them together to create the data set called data.train1
3) It merges these two new data sets and it creates an unique large data set called data.total which has 563 columns
and 10299 rows
4) It renames the first two columns as ID for the subjects and activity for the subject's activity



 ... STEP 2: extracts only the measurements on the mean and standard deviation for each measurements ...........
 
 
 My SECOND SCRIPT does the following things:
 
 
1) It opens the file called features.txt
2) It uses pattern matching to identify the measurements on the mean - mean() - and on the standard deviation - sd()
into features.txt
3) It creates a temporary data set (data1) without the first two columns which will be used to extract the variables
corresponding to mean() and std() which were identified in the step 2)
4) It extracts the means and it puts them into the data set called data.m.tot
5) It extracts the standard deviations and it puts them into the data set called data.std.tot
6) It creates a data set (data2) with only the first two columns
7) It creates a new large data set called data.total.1 by joining data2, data.m.tot and data.std.tot
8) It oders data.total.1 by ID and activity



... STEP 3: uses descriptive activity names to name the activities in the data set .....................


 My THIRD SCRIPT does the following things:
 
1) It opens the file called activity_labels.txt
2) It recodifies the variable activity by using the labels into activity_labels.txt



... STEP 4: appropriately labels the data set with descriptive variable names ..........................

 
 My FOURTH SCRIPT does the following things:
 
1) It opens again the data set called features.txt (it would be not necessary; I do that only to be sure)
2) It uses again pattern matching as above (it would be not necessary; I do that only to be sure)
3) It creates a list with the variable's names about means that it uses to label the corresponding variables into 
data.total.1
4) It creates a list with the variable's names abiut std that it uses to label the corresponding variables into
data.total.1




... STEP 5: creates a second, independent tidy data set with the average of each variable for each activity and each
            subject .............
            
 
 My FIFTH SCRIPT does the following things:            

1) It calculates the mean of each measurement within subjects and their single activity. Hence, it gets a data set
called data.tidy with 180 rows and 68 columns.
2) It saves the data set in a file.txt













 
 
 
 
 
 
 
 
 
 
