## load the dplyr library
library(dplyr)

## read data form GD directory

x_test <- read.table("GD/X_test.txt")
y_test <- read.table("GD/y_test.txt")
y_train <- read.table("GD/y_train.txt")
x_train <- read.table("GD/X_train.txt")
s_train <- read.table("GD/subject_train.txt")
s_test <- read.table("GD/subject_test.txt")
features <- read.table("GD/features.txt")
labels <- read.table("GD/activity_labels.txt")

## convert features to a vector
f1 <- as.vector(features[,2])

## apply f1 to x_test and x_train as columnnames
names(x_test) <- f1
names(x_train) <- f1

## set columnname for y_train, y_test, s_test and s_train
names(y_train) <- "activtiy"
names(y_test) <- "activtiy"
names(s_train) <- "subject"
names(s_test) <- "subject"

## combine s_test, y_test, x_test to one table
test <- cbind(s_test, y_test, x_test)

## combine s_train, y_train, x_train to one table
train <- cbind(s_train, y_train, x_train)

## put test and train to one complete table together
totalData <- rbind(test, train)

## select only the columns with "mean" or "std" in it, plus subject and activity
totalData <- cbind(totalData[,1:2],totalData[,grep("mean",features$V2, value=TRUE)], totalData[,grep("std", features$V2, value=TRUE)])

## create a new column with the acitivtiynames and add it to the table totalData
Act <- mapvalues(as.vector(totalData[,2]), 1:6, as.vector(labels[,2]))
activityName <- matrix(Act, length(Act),1)
totalData <- cbind(totalData2, activityName)

## new selection that leaves the column activity out
totalData <- select(totalData, 1, 82, 3:81)

## define the table as a dataframe
totalData <- tbl_df(totalData)

## group the data with subject and activityName
groupedData <- group_by(totalData, subject, activityName)

## take the mean of all the variables
groupedData2 <- summarise_each(groupedData, mean, 3:81)

## write out the txt-file with the tidy data
write.table(groupedData2, "tidyData")
