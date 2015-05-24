# Dataset code book

The data for this project are  in the directory "UCI-HAR-Dataset".  This is a subdirectory of the working directory. 

Listed below are the datasets files

* UCI-HAR-Dataset/test/X_test.txt           :List of all features.
* UCI-HAR-Dataset/test/y_test.txt           :Test labels.
* UCI-HAR-Dataset/test/subject_test.txt     :Identifies the Subject corresponding the a particular row in the test data 
* UCI-HAR-Dataset/train/X_train.txt         :Training set.
* UCI-HAR-Dataset/train/y_train.txt         :Training labels.
* UCI-HAR-Dataset/train/subject_train.txt   :Identifies the Subject corresponding the a particular row in the test data
* UCI-HAR-Dataset/features.txt              : List of all features.
* UCI-HAR-Dataset/activity_labels.txt       :Links the class labels with their activity name.

Below are the steps used to create the summary dataset

* Read the data
* In training label and test label, replace the activity codes 1,2,3,4,5,6 by their names (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* Merge the training and test labels with training and test datasets respectively
* Merge the training and test datasets
* Get the subset of variables related to the mean(), std(), meanFreq()
* Rename the columns in the dataset
* Group the rows by Subject and ActivityLabel
* Compute the mean of each column for the groups
