# tidyupHAR
Submitted as Course Project for the course Getting and Cleaning Data (Coursera)

# Overview
The purpose of this file is to explain all the steps performed in the file run_analysis.R The file run_analysis.R
is an R script file that performs the following tasks on Human Activity Recognition Data recorded using Samsung Galaxy S
smartphone. The tasks are as follows:  
1 - Merges the training and the test sets to create one data set.  
2 - Extracts only the measurements on the mean and standard deviation for each measurement.  
3 - Uses descriptive activity names to name the activities in the data set  
4 - Appropriately labels the data set with descriptive variable names.  
5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  


# Downloading the files
Download the zip file containing data files into a folder on your local computer. Extract the zip file.
The extracted folder will be your working directory for the rest of this exercise.

# Reading Data Set
1. Read the *train/X_train.txt* into a variable **xtrain.data**. Convert into a matrix of 7352x561. Then, convert into a dataframe.  
  
2. Read the *train/subject_train.txt* into a variable **sub.train.data** containing information about subjects.  

3. Read the *train/y_train.txt* into a variable **y.train.data** containing information about activity labels. 

4. Using *cbind()*, bind the variables **xtrain.data**, **sub.train.data** and **y.train.data** and assign to a new variable **train.data**.

On the same lines (step 1-4 above), read the test data from *test/* directory into variables **xtest.data**, **sub.test.data** and **y.test.data**. Bind these variables into a new variable **test.data**.

# 1. Merging the training and test sets to create one data set

Using *rbind()*, merge the variables **train.data** and **test.data** (created in previous section) into a new variable **full.data**.

# 2. Extracting only the measurements on the mean and standard deviation for each measurement

1. Read the feature names from the file *features.txt" into a variable **features**.  

2. Assign the names of the dataframe **full.data** from the vector **features** created in previous step.  

3. Using *grep()*, find out the indices of the column names that contain the words "mean" or "std".  

4. Retain the column indices derived in step 3, **subject** and **y** variable into the dataframe **tidy.data**.  

# 3. Uses descriptive activity names to name the activities in the data set

1. Read the activity names from the file *activity_labels.txt* into a variable **activity.data**.  

2. Using a *for loop* on **activity.data**, replace all the activity labels in the column **y** of the dataframe **tidy.data** to their activity labels read from the file in previous step.   

# 4. Appropriately labels the data set with descriptive variable names.

1. Assign the name **'activity'** to the column **y** of the data frame **tidy.data**.

2. Using *sub()*, make the following replacements to the column names of **tidy.data**:
 - change "acc" to "Acceleration"
 - change beginning "t" to "time"
  - change beginning "f" to "frequency"
  - remove the first occurrence of "-"
  - change "Mag" to "Magnitude"
  - change "mean()" to "Mean"
  - change "std()" to "STD"
  - change "freq()" to "Frequency"
  -  change "Gyro" to "Gyroscope"

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

1. Load the package *dplyr*.  

2. While chaining, use *group_by()* to perform grouping by **activity** and **subject**.  

3. Chain the grouped data table to *summarize_all()* with function as *mean* to find average of all the columns (other than subject and activity) and save the result into a variable **agg.data**.

4. At the end, use *write.table()* to save the **agg.data** created into a file named **AggData.txt** with *rownames=FALSE*.  

