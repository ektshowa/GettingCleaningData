# Getting and Cleaning Data Project

This is the course project of the Coursera Getting and Cleaning Data

The repository contains a script run_analysis.R that get the differents datasets, tranform and merge them, then summarize to output the mean of the variables.

To start you have to unzip the provided dataset and copy the directory "UCI-HAR-Dataset" in the working directory.

As described in the dataset's README file the data were collected by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. during an experiment on Human Activity Recognition Using Smartphones.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The datasets can be found in the files

* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'train/subject_train.txt'
* 'test/subject_test.txt'

Each row of the last two files identifies the subject who performed the activity for each window sample
