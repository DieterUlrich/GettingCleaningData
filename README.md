# GettingCleaningData

Following files are needed and loaded into R to create the tidy data:
X_test.txt, y_test.txt, y_train.txt, X_train.txt, subject_train.txt, subject_test.txt, features.txt, activity_labels.txt

X_test.txt contains the values for the test data
X_train.txt contains the values for the training data
y_test.txt contains the activities that match the values in X_test.txt
y_train.txt contains the activities that match the values in X_train.txt
subject_test.txt contains the subjects that were performing the values in X_test.txt
subject_train.txt contains the subjects that were performing the values in X_train.txt
features.txt contains the names of the columns in X_test and X_train
activity_labels.txt contains the names of the activities. This connects to y_test.txt and y_train.txt

the tables have following names in R: x_test, x_train, y_test, y_train, s_test, s_train, features, labels

after loading the files into R, the data are combined in this matter:
features is converted to a vector and applied to x_test and x_train as columnnames

y_test and y_train get a columnname "activity"

s_test and s_train get a coumnname "subject"

s_test, y_test, x_test are combined to one table (test)

s_train, y_train, x_train are combined to one table (train)

afterward test and train are combined to one table (totalData)

a selection is made only with the columns that contain "mean" or "std", , plus subject and activity

a new column is generated out of labels to add the acitvitynames to totalData

a selection is made without the column "activity"

the table is grouped by "subject" and "activityName" (groupedData)

the means are calculated for each variable and written in a new table (groupedData2)

the table is written as txt.file (tidyData.txt)
