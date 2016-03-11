# GettingAndCleaningData
Course Project

This script assume's that the data has been downloaded and that the UCI HAR Dataset folder is the working directory. It does the following :

**1)** Merges the training and the test sets to create one dataset. We know from the README.txt file that the train and test sets were part of one dataset "The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.". They have the same number of column (561) which matches the number of features. So merging them in this case mean row binding them, which the following script does :
``` 
test_set <- read.table("./test/X_test.txt", colClasses = "numeric", nrows = 2947)
train_set <- read.table("./train/X_train.txt", colClasses = "numeric", nrows = 7352)
step1 <- rbind(test_set, train_set)
rm(test_set, train_set)
```
The order by which the sets are bound is a matter of choice, in this case the test set was put on top of the train set.

**2)** Extracts only the measurements on the mean and standard deviation for each measurement using regular expressions and the grep function on the 'features.txt' file, the obtained rows match the relevant columns in the dataset. The set of variables that were extraced are: mean(), std() and meanFreq()

The meanFreq() set was included because it is a "Weighted average of the frequency components to obtain a mean frequency" therefore a measurement on the mean.

The additional variables ending with Mean were excluded because there measurement aren't available, they are just parameters for the calculation of the angle : "Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable: gravityMean, tBoddyAccMean, ...).
```
features <- read.table("./features.txt")
column_indeces <- grep("(mean|std)", features[, 2])
column_names <- features[column_indeces, 2] # Will use in step 4
step2 <- step1[, column_indeces]
rm(step1, column_indeces, features)
```

**3)** Gives descriptive activity names to the activities in the data by row binding and subseting  the Y_test.txt and Y_train.txt files -which contain the numeric codes of the different activities (1 = Walking, 5 = Standing, etc ...) and which sizes matche the train and test sets'- to the acticity_labels.txt file which contains the names of the activities and column binding all that to the dataset.
```
activity_labels <- read.table("./activity_labels.txt")
train_labels <- read.table("./train/Y_train.txt")
test_labels <- read.table("./test/Y_test.txt")
labels <- as.factor(sub("_", " ", activity_labels[, 2]))
label_indeces <- rbind(test_labels, train_labels)
step3 <- cbind(labels[label_indeces[,1]], step2)
rm(step2, label_indeces, labels, test_labels, train_labels, activity_labels)
```

**4)** Labels the data set with descriptive variable names by taking the names of the extracted columns from the 'features.txt' file in step 2 and editing them, replacing : "t", "f", "BodyBody", "Acc", "mean", "std", "Gyro", "Mag" and "." by "Time", "Frequency", "Body", "Accelerometer", "Mean", "StadardDeviation", "Gyroscope", "Magnitude" and space.
```
column_names <- make.names(column_names)
pattern <- c("t", "f", "BodyBody", "Acc", "mean", "std", "Gyro", "Mag", "\\.")
replacement <- c("Time", "Frequency", "Body", "Accelerometer", "Mean",
                 "StadardDeviation", "Gyroscope", "Magnitude", "")
make_descriptive <- function(pattern, replacement, v)
{
    for (i in 1:length(pattern))
    {
        v <- gsub(pattern[i], replacement[i], v)
    }
    v
}
descriptive_names <- c("Activity", make_descriptive(pattern, replacement, column_names))
colnames(step3) <- descriptive_names
step4 <- step3
rm(step3, column_names, pattern, replacement, descriptive_names, make_descriptive)
```

**5)** Creates a tidy dataset with the average of each variable for each activity and each subject by aggregating on the activity and the subject_id using the 'mean' function. subject_id contains the id (an integere between 1 and 30) of all the participants in the experiment and is obtained by row binding the subject_test.txt and subject_train.txt files.
```
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")
subject_id <- rbind(subject_test, subject_train)
step5 <- aggregate(step4[, 2:80], by = list(step4$Activity, subject_id[, 1]), FUN = mean)
step5[, 2] <- NULL; colnames(step5)[1] <- "Activity"
View(step5)
rm(step4, subject_test, subject_train, subject_id)
```
To recreate the text file containing the tidy data use : `write.table(x = step5, file = "./tidy_data.txt", row.names = FALSE)` (after runing the script of course).
