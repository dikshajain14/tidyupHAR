
#1.Merges the training and the test sets to create one data set.

#read x_train.txt
xtrain.data<-scan(file = "train/X_train.txt",what =numeric(561))

#convert into matrix
xtrain.data <- matrix(xtrain.data,ncol=561)

#convert into data frame
xtrain.data<-as.data.frame(xtrain.data)

#read subject train data
sub.train.data <- scan(file = "train/subject_train.txt",what = integer())

#read y train data
ytrain.data <-scan(file = "train/y_train.txt",what = integer())

#using cbind bind them into a single data frame
train.data <- cbind(xtrain.data,subject=sub.train.data,y=ytrain.data)

xtest.data <-scan(file = "test/X_test.txt",what = numeric(561))

xtest.data <- matrix(xtest.data,ncol=561)

#convert into data frame
xtest.data<-as.data.frame(xtest.data)

#read subject train data
sub.test.data <- scan(file = "test/subject_test.txt",what = integer())

#read y train data
ytest.data <-scan(file = "test/y_test.txt",what = integer())

#using cbind bind them into a single data frame
test.data <- cbind(xtest.data,subject=sub.test.data,y=ytest.data)

#combine train data and test data
full.data <- rbind(train.data,test.data)

#2.Extracts only the measurements on the mean and standard deviation for each measurement.
#Read feature names from features.txt
features <- scan(file="features.txt",what = list(integer(),character()))
features <- features[[2]]

#apply feature names to data frame variable names
var.names <- c(features,"subject","y")
names(full.data) <- var.names

mean.cols <- grep(pattern = "mean",features,ignore.case = TRUE)
std.cols <- grep(pattern = "std",features,ignore.case = TRUE)

tidy.data <- full.data[,c(mean.cols,std.cols)]
tidy.data <- cbind(subject=full.data$subject,
                   y=full.data$y,
                   tidy.data)

#3.Uses descriptive activity names to name the activities in the data set

#Read activity names from activity.txt
activity.data <- read.table(file="activity_labels.txt",stringsAsFactors = FALSE)
names(activity.data) <- c("activityno","activityname")

for(acno in activity.data$activityno)
{
  ids<- (tidy.data$y == acno)
  tidy.data$y[ids] <- activity.data$activityname[acno]
}

#4.Appropriately labels the data set with descriptive variable names.

var.names <- names(tidy.data)

var.names[2] <- "activity"

#substitute 'time' in place of 't'
var.names <- sub(pattern = '^t',replacement = 'time',var.names)

#substitute 'Acceleration' in place of 'acc'
var.names <- sub(pattern = 'Acc',replacement = 'Acceleration',var.names)

#substitute 'frequency' in place of 'f'
var.names <- sub(pattern = '^f',replacement = 'frequency',var.names)

#removing -
var.names <- sub(pattern = '-',replacement = "",var.names)


#substitute 'Magnitude' in place of 'Mag'
var.names <- sub(pattern = 'Mag',replacement = 'Magnitude',var.names)

#substitute "Mean" in place of "mean()"
var.names <- sub(pattern = 'mean(\\(\\))?',replacement = "Mean",var.names)

#substitute "STD" in place of "std()"
var.names <- sub(pattern = 'std\\(\\)',replacement = "STD",var.names)

#substitute "Frequency" in place of "freq()"
var.names <- sub(pattern = 'Freq\\(\\)',replacement = "Frequency",var.names)

#substitute "Body" in place of "BodyBody"
var.names <- sub(pattern = 'BodyBody',replacement = "Body",var.names)

#substitute "Gyroscope" in place of "Gyro"
var.names <- sub(pattern = 'Gyro',replacement = "Gyroscope",var.names)

names(tidy.data) <- var.names

#5. From the data set in step 4, creates a second, independent tidy data set
#   with the average of each variable for each activity and each subject.

library(dplyr)

agg.data <- tidy.data %>% 
            group_by(activity,subject) %>% 
            summarise_all(mean) %>% 
            print

write.table(agg.data, "AggData.txt", row.name=FALSE)
