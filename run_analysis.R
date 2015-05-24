library(dplyr);

#Read in data
test.data <- read.table("./UCI-HAR-Dataset/test/X_test.txt", sep="");
test.label <- read.table("./UCI-HAR-Dataset/test/y_test.txt", sep="");
subject.test <- read.table("./UCI-HAR-Dataset/test/subject_test.txt", sep="");
training.data <- read.table("./UCI-HAR-Dataset/train/X_train.txt", sep="");
training.label <- read.table("./UCI-HAR-Dataset/train/y_train.txt", sep = "");
subject.training <- read.table("./UCI-HAR-Dataset/train/subject_train.txt", sep = "");
features <- read.table("./UCI-HAR-Dataset/features.txt", sep = "");
activity.label <- read.table("./UCI-HAR-Dataset/activity_labels.txt", sep = "");


# Write a function that creates two vectors of activity names from test.label  and training.label
change.label <- function (input.data){
  result <- character();
  input <- as.numeric(as.character(input.data$V1))
  
  for (i in seq_along(input)){
    
    if (input[i] == 1){
      result[i] = "WALKING";
    }
    else if (input[i] == 2){
      result[i] = "WALKING_UPSTAIRS";
    }
    else if (input[i] == 3){
      result[i] = "WALKING_DOWNSTAIRS";
    }
    else if (input[i] == 4){
      result[i] = "SITTING";
    }
    else if (input[i] == 5){
      result[i] = "STANDING";
    }
    else if (input[i] == 6){
      result[i] = "LAYING";
    }
    else{
      result[i] = NA;
    } 
    
  }
  result <- data.frame(ActivityLabel = result);
}

#Transform test.label and training.label in two vectors containing activity names
test.activity.label <- change.label(test.label);
training.activity.label <- change.label(training.label);

#Create vector of column names from features
new.column.names <- as.character(features$V2);

#In test and training data replace column names with features
names(test.data) <- new.column.names
names(training.data) <- new.column.names

#Add subject and activity to training.data and test.data
names(subject.training) <- "Subject";
names(subject.test) <- "Subject";
complete.training <- cbind(subject.training, training.activity.label, training.data);
complete.test <- cbind(subject.test, test.activity.label, test.data);

#Create the full data set
complete.data <- rbind(complete.test, complete.training);

#Extract mean and standard deviation
mean.std.columns <- grep("mean|std", features$V2, value = TRUE);
complete.column.names <- c("Subject", "ActivityLabel", mean.std.columns);

#Create the subset of data with the needed variables
subset.data <- complete.data[, complete.column.names];

#Rename the columns
names(subset.data) <- gsub("-", "", names(subset.data));
names(subset.data) <- gsub("[[:punct:]]", "", names(subset.data));

# Group data by subject and activity
grouped.data <- group_by(subset.data, Subject, ActivityLabel)

#Find the average of each variables
grouped.data.mean <- summarise_each(grouped.data, funs(mean), tBodyAccmeanX:fBodyBodyGyroJerkMagmeanFreq)

#Write data to a text file in the working directory
write.table(grouped.data.mean, "./groupedDataMean.txt", sep="\t", row.name=FALSE)

