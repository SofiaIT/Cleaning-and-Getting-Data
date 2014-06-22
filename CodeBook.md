CODE BOOK
========================================================

<strong> HUMAN ACTIVITY RECOGNITION USING SMARTPHONES DATASET</strong>

............................... DATA DESCRIPTION ......................................


In this assignment, I used the data from the study about human activity recognition by using the smartphone Samsung Galaxy S II. 
In this study, 30 volunteers were studied while they were performing six different activities and they were wearing a smartphone Samsung.
These different activities were classified as: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING and LAYING.

............................... VARIABLES CONSIDERED ..................................

In my work, I considered the variables corresponding to the <strong>means</strong> and the <strong>standard deviations</strong> calculated on the following parameters which were calculated by the scientists:

* tBodyAcc-XYZ  
      * tBodyAcc-X  
        * body acceleration signals on x-axis in time
      * tBodyAcc-Y  
        * body acceleration signals on y-axis in time 
      * tBodyAcc-Z  
        * body acceleration signals on z-axis in time
* tGravityAcc-XYZ
      * tGravityAcc-X  
        * gravity acceleration signals on x-axis in time
      * tGravityAcc-Y  
        * gravity acceleration signals on y-axis in time
      * tGravityAcc-Z  
        * gravity acceleration signals on z-axis in time
* tBodyAccJerk-XYZ
      * tBodyAccJerk-X   
        * Jerk signals from body acceleration on x-axis derived in time
      * tBodyAccJerk-Y   
        * Jerk signals from body acceleration on y-axis derived in time
      * tBodyAccJerk-Z   
        * Jerk signals from body acceleration on z-axis derived in time
* tBodyGyro-XYZ
      * tBodyGyro-X   
        * body angular velocity signals on x-axis in time
      * tBodyGyro-Y   
        * body angular velocity signals on y-axis in time
      * tBodyGyro-Z   
        * body angular velocity signals on z-axis in time
* tBodyGyroJerk-XYZ
      * tBodyGyroJerk-X  
        * Jerk signals from body angular velocity on x-axis derived in time
      * tBodyGyroJerk-Y
        * Jerk signals from body angular velocity on y-axis derived in time
      * tBodyGyroJerk-Z
        * Jerk signals from body angular velocity on z-axis derived in time
* tBodyAccMag
      * body acceleretion signals calculated using the Euclidean norm 
* tGravityAccMag
      * gravity acceleretion signals calculated using the Euclidean norm
* tBodyAccJerkMag
      * Jerk signals from body acceleration calculated using the Euclidean norm
* tBodyGyroMag
      * body angular velocity signals calculated using the Euclidean norm
* tBodyGyroJerkMag
      * Jerk signals from body angular velocity calculated using the Euclidean norm
* fBodyAcc-XYZ
      * fBodyAcc-X
        * body acceleration signals on x-axis in time with FFT
      * fBodyAcc-Y
        * body acceleration signals on y-axis in time with FFT
      * fBodyAcc-Z
        * body acceleration signals on z-axis in time with FFT      
* fBodyAccJerk-XYZ
      * fBodyAccJerk-X
        * Jerk signals from body acceleration on x-axis derived in time with FFT 
      * fBodyAccJerk-Y
        * Jerk signals from body acceleration on y-axis derived in time with FFT 
      * fBodyAccJerk-Z
        * Jerk signals from body acceleration on z-axis derived in time with FFT     
* fBodyGyro-XYZ
      * fBodyGyro-X
        * body angular velocity signals on x-axis in time with FFT
      * fBodyGyro-Y
        * body angular velocity signals on y-axis in time with FFT
      * fBodyGyro-Z
        * body angular velocity signals on z-axis in time with FFT      
* fBodyAccMag
      * body acceleretion signals calculated using the Euclidean norm with FFT
* fBodyAccJerkMag
      * Jerk signals from body acceleration calculated using the Euclidean norm with FFT
* fBodyGyroMag
      * body angular velocity signals calculated using the Euclidean norm with FFT
* fBodyGyroJerkMag
      * Jerk signals from body angular velocity calculated using the Euclidean norm with FFT



All these parameters represent acceleration signals and angular velocities produced by body and gravity acceleration during the different activities performed by the subjects, and they were calculted through different methodologies. 


............................... STEPS TO CLEAN UP THE DATA ............................


I conducted the following steps to get and clean up the data above:

* I joined the following data sets into a unique data set: 
  * subject_test
  * y_test, X_test
  * subjects_train
  * y_train 
  * X_train .
* I extracted the measurements corresponding to the mean and the standard deviation of the parameters reported above.
* I recodified the variable corresponding to the activities.
* I appropriately labeled the variables with the descriptive variables names.
* I created a second, independent tidy data set with the average of each variable for each activity and each subject.

.......................................................................................



