# Dataset code book

The data for this project are  in the directory "UCI-HAR-Dataset".  This is a subdirectory of the working directory. 

The the data where obtained from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain

The original datasets files are in the directory "UCI-HAR-Dataset" that we get from the unzip of downloaded file.

Listed below are the datasets files

* UCI-HAR-Dataset/test/X_test.txt           :List of all features.
* UCI-HAR-Dataset/test/y_test.txt           :Test labels.
* UCI-HAR-Dataset/test/subject_test.txt     :Identifies the Subject corresponding the a particular row in the test data 
* UCI-HAR-Dataset/train/X_train.txt         :Training set.
* UCI-HAR-Dataset/train/y_train.txt         :Training labels.
* UCI-HAR-Dataset/train/subject_train.txt   :Identifies the Subject corresponding the a particular row in the test data
* UCI-HAR-Dataset/features.txt              : List of all features.
* UCI-HAR-Dataset/activity_labels.txt       :Links the class labels with their activity name.

Below are the steps used to create the summary of the tidy dataset

* Read the data
* In training label and test label, replace the activity codes 1,2,3,4,5,6 by their names (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* Merge the training and test labels with training and test datasets respectively
* Merge the training and test datasets
* Get the subset of variables related to the mean(), std(), meanFreq()
* Rename the columns in the dataset
* Group the rows by Subject and ActivityLabel
* Compute the mean of each column for the groups

Below is the list of the variables used in our dataset

* Subject:   the subject related to the observation(row of the dataset). Integer between 1 - 30
* ActivityLabel:  label of the activity. character values (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 

All the variables listed below are numeric contained in the interval [-1,1]

* tBodyAccmeanX:	Mean value of Time domain signal for body acceleration on axis X
* tBodyAccmeanY:	Mean value of Time domain signal for body acceleration on axis Y
* tBodyAccmeanZ:	Mean value of Time domain signal for body acceleration on axis Z 
* tBodyAccstdX:		Standard Deviation value of Time domain signal for body acceleration on axis X
* tBodyAccstdY:		Standard Deviation value of Time domain signal for body acceleration on axis Y
* tBodyAccstdZ:		Standard Deviation value of Time domain signal for body acceleration on axis Z
* tGravityAccmeanX:	Mean value of Time domain signal for gravity acceleration on axis X
* tGravityAccmeanY:	Mean value of Time domain signal for gravity acceleration on axis Y
* ttGravityAccmeanZ:	Mean value of Time domain signal for gravity acceleration on axis Z
* tGravityAccstdX:	Standard Deviation value of time domain signal for gravity acceleration on axis X
* tGravityAccstdY:	Standard Deviation value of time domain signal for gravity acceleration on axis Y
* tGravityAccstdZ:	Standard Deviation value of time domain  signal for gravity acceleration on axis Z
* tBodyAccJerkmeanX:	Mean value of Jerk signal(from time domain signal) of the body linear acceleration on axis X 
* tBodyAccJerkmeanY:	Mean value of Jerk signal(from time domain signal) of the body linear acceleration on axis Y 
* tBodyAccJerkmeanZ:	Mean value of Jerk signal(from time domain signal) of the body linear acceleration on axis Z
* BodyAccJerkstdX:	Mean value of Jerk signal(from time domain signal) of the body linear acceleration on axis X 
* tBodyAccJerkstdY:	Mean value of Jerk signal(from time domain signal) of the body linear acceleration on axis Y 
* tBodyAccJerkstdZ:	Mean value of Jerk signal(from time domain signal) of the body linear acceleration on axis Z 
* tBodyGyromeanX:	Mean value of time domain signal for the body gyroscope on axis X
* tBodyGyromeanY:	Mean value of time domain signal for the body gyroscope on axis Y
* tBodyGyromeanZ:	Mean value of time domain signal for the body gyroscope on axis Z
* tBodyGyrostdX:	Standard Deviation of time domain signal for the body gyroscope on axis X
* tBodyGyrostdY:	Standard Deviation of time domain signal for the body gyroscope on axis Y
* tBodyGyrostdZ:	Standard Deviation of time domain signal for the body gyroscope on axis Z
* tBodyGyroJerkmeanX:	Mean value of Jerk signal(from time domain signal) for the body gyroscope on axis X
* tBodyGyroJerkmeanY:	Mean value of Jerk signal(from time domain signal) for the body gyroscope on axis Y
* tBodyGyroJerkmeanZ:	Mean value of Jerk signal(from time domain signal) for the body gyroscope on axis Z
* tBodyGyroJerkstdX:	Standard deviation of Jerk signal(from time domain signal) for the body gyroscope on axis X
* tBodyGyroJerkstdY:	Standard deviation of Jerk signal(from time domain signal) for the body gyroscope on axis Y
* tBodyGyroJerkstdZ:	Standard deviation of Jerk signal(from time domain signal) for the body gyroscope on axis Z
* tBodyAccMagmean:	Mean value of magnitude of time domain signal for the body acceleration on axis X
* tBodyAccMagstd:	Mean value of magnitude of time domain signal for the body acceleration on axis Y
* tGravityAccMagmean:	Mean value of magnitude of time domain signal for the body acceleration on axis Z
* tGravityAccMagstd:	Standard deviation of magnitude of time domain signal for the gravity acceleration
* tBodyAccJerkMagmean:	  Mean value of magnitude of Jerk signal(for time domain signal) for the body acceleration
* tBodyAccJerkMagstd:	Standard deviation of magnitude of Jerk signal(of time domain signal) for the body acceleration
* tBodyGyroMagmean:	Mean value of magnitude of time domain signal of for the body gyroscope
* tBodyGyroMagstd:	Standard deviation of magnitude of time domain signal for the body gyroscope 
* tBodyGyroJerkMagmean:  Mean value of magnitude of Jerk signal(for time domain signal) for the body gyroscope
* tBodyGyroJerkMagstd:	   Standard deviation of the magnitude of Jerk signal(for time domain signal) for the body gyroscope
* fBodyAccmeanX:	Mean value of frequence domain signal of body acceleration on axis X
* fBodyAccmeanY:	Mean value of frequence domain signal of body acceleration on axis Y              
* fBodyAccmeanZ:	Mean value of frequence domain signal of body acceleration on axis Z
* fBodyAccstdX:		Standard deviation value of frequency domain signal of body acceleration on axis X
* fBodyAccstdY:		Standard deviation value of frequency domain signal of body acceleration on axis Y              
* fBodyAccstdZ:		Standard deviation value of frequency domain signal of body acceleration on axis Z
* fBodyAccmeanFreqX:	Mean frequency of frequency domain signal of body acceleration on axis X
* fBodyAccmeanFreqY:	Mean frequency of frequency domain signal of body acceleration on axis Y          
* fBodyAcc-meanFreqZ:	Mean frequency of frequency domain signal of body acceleration on axis Z
* fBodyAccJerkmeanX:	Mean value of Jerk signal(for frequency domain) for body acceleration on axis X
* fBodyAccJerkmeanY:	Mean value of Jerk signal(for frequency domain) for body acceleration on axis Y          
* fBodyAccJerkmeanZ:	Mean value of Jerk signal(for frequency domain) for body acceleration on axis Z
* fBodyAccJerkstdX:	Standard deviation of Jerk signal(for frequency domain) for body acceleration on axis X
* fBodyAccJerkstdY:	Standard deviation of Jerk signal(for frequency domain) for body acceleration on axis Y      
* fBodyAccJerkstdZ:	Standard deviation of Jerk signal(for frequency domain) for body acceleration on axis Z
* fBodyAccJerkmeanFreqX:	Mean frequency of Jerk signal(for frequency domain signal) for body acceleration on axis X
* fBodyAccJerkmeanFreqY:	Mean frequency of Jerk signal(for frequency domain signal) for body acceleration on axis Y 
* fBodyAccJerkmeanFreqZ:	Mean frequency of Jerk signal(for frequency domain signal) for body acceleration on axis Z
* fBodyGyromeanX:	Mean value of frequency domain signal for body gyroscope on axis X
* fBodyGyromeanY: Mean value of frequency domain signal for body gyroscope on axis Y             
* fBodyGyromeanZ: Mean value of frequency domain signal for body gyroscope on axis Z  
* fBodyGyrostdX: Standard deviation of frequency domain signal for body gyroscope on axis X
* fBodyGyrostdY: Standard deviation of frequency domain signal for body gyroscope on axis y             
* fBodyGyrostdZ: Standard deviation of frequency domain signal for body gyroscope on axis Z
* fBodyGyromeanFreqX: Mean frequency of frequency domain signal of body gyroscope on axis X
* fBodyGyromeanFreqY: Mean frequency of frequency domain signal of body gyroscope on axis Y         
* fBodyGyromeanFreqZ: Mean frequency of frequency domain signal of body gyroscope on axis Z
* fBodyAccMagmean: Mean value of magnitude of frequency domain signal for body aceleration
* fBodyAccMagstd: Standard deviation of magnitude of frequency domain signal for body aceleration
* fBodyAccMagmeanFreq: Mean frequency of magnitude of frequency domain signal for body aceleration
* fBodyBodyAccJerkMagmean: Mean value of magnitude of Jerk signal(for the body acceleration) in frequency domain
* fBodyBodyAccJerkMagstd: Standard deviation of magnitude of Jerk signal(for the body acceleration) in frequency domain      
* fBodyBodyAccJerkMagmeanFreq: Mean frequency value of magnitude of Jerk signal(for the body acceleration) in frequency domain
* fBodyBodyGyroMagmean: Mean value of magnitude of frequency domain signal for body gyroscope 
* fBodyBodyGyroMagstd: Standard deviation of magnitude of frequency domain signal for body gyroscope         
* fBodyBodyGyroMagmeanFreq: Mean frequency of magnitude of frequency domain signal for body gyroscope
* fBodyBodyGyroJerkMagmean: Mean value of magnitude of Jerk signal(for the body gyroscope) in frequency domain 
* fBodyBodyGyroJerkMagstd: Standard deviation of magnitude of Jerk signal(for the body gyroscope) in frequency domain     
* fBodyBodyGyroJerkMagmeanFreq: Mean frequency of magnitude of Jerk signal(for the body gyroscope) in frequency domain


 
