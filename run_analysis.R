## @knitr run_analysis.R
# 1) Merging the training and the test sets to create one data set
test_set <- read.table("./test/X_test.txt", colClasses = "numeric", nrows = 2947)
train_set <- read.table("./train/X_train.txt", colClasses = "numeric", nrows = 7352)
step1 <- rbind(test_set, train_set)
rm(test_set, train_set)

# 2) Extracting only the measurements on the mean and standard
# deviation for each measurement
features <- read.table("./features.txt")
column_indeces <- grep("(mean|std)", features[, 2])
column_names <- features[column_indeces, 2] # Will use in step 4
step2 <- step1[, column_indeces]
rm(step1, column_indeces, features)

# 3) Using descriptive activity names to name the activities in the data set
activity_labels <- read.table("./activity_labels.txt")
train_labels <- read.table("./train/Y_train.txt")
test_labels <- read.table("./test/Y_test.txt")
labels <- as.factor(sub("_", " ", activity_labels[, 2]))
label_indeces <- rbind(test_labels, train_labels)
step3 <- cbind(labels[label_indeces[,1]], step2)
rm(step2, label_indeces, labels, test_labels, train_labels, activity_labels)

# 4) Labeling the data set with descriptive variable names
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

# 5) Creating a tidy data set with the average of each variable for each
# activity and each subject
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")
subject_id <- rbind(subject_test, subject_train)
step5 <- aggregate(step4[, 2:80], by = list(step4$Activity, subject_id[, 1]), FUN = mean)
step5[, 2] <- NULL; colnames(step5)[1] <- "Activity"
View(step5)
rm(step4, subject_test, subject_train, subject_id)