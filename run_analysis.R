

setwd("~/coursera/3. Getting and cleaning data/week4/UCI HAR Dataset")
##read the files

x_test<-read.table("test/X_test.txt")
y_test<-read.table("test/y_test.txt")

subject_test <- read.table("test/subject_test.txt")

x_train<-read.table("train/X_train.txt")
y_train<-read.table("train/y_train.txt")

subject_train <- read.table("train/subject_train.txt")


#Merge the training and the test sets

data_features<-rbind(x_test,x_train)

activity<-rbind(y_test,y_train)
subject<-rbind(subject_test, subject_train)

names(subject)<-c("subject")
names(activity)<- c("activity")

data_features_names <- read.table("features.txt")
names(data_features)<- data_features_names$V2

str(data_features_names)

data_merge <- cbind(subject, activity)

data_all <- cbind(data_features, data_merge)

str(data_all)

#2) Extracts only the measurements on the mean and standard deviation for each measurement.

subdata_features_names<-data_features_names$V2[grep("mean\\(\\)|std\\(\\)", data_features_names$V2)]

select_mean_sd_features<-c(as.character(subdata_features_names), "subject", "activity" )
data_select<-subset(data_all,select=select_mean_sd_features)

str(data_select)
#3) Uses descriptive activity names to name the activities in the data set


activity_labels<-read.table("activity_labels.txt")
colnames(activity_labels)<-c("activity","name_activity")
str(activity_labels)


data_select<- merge(data_select, activity_labels,all=TRUE) #merge the data_select and the activity_labels by "activity" which exists in two tables



#4)Appropriately labels the data set with descriptive variable names.

#The features selected for this database come from the accelerometer and gyroscope 
names(data_select)<-gsub("Acc", "Accelerometer", names(data_select))
names(data_select)<-gsub("Gyro", "Gyroscope", names(data_select))

#prefix 't' to denote time
names(data_select)<-gsub("^t", "time", names(data_select))

#magnitude by mag
names(data_select)<-gsub("Mag", "Magnitude", names(data_select))

#the 'f' to indicate frequency domain signals
names(data_select)<-gsub("^f", "frequency", names(data_select))


#the 'BodyBody' by 'Body
names(data_select)<-gsub("BodyBody", "Body", names(data_select))

write.table(data_select, file = "data_merge.txt",row.name=FALSE)
str(data_select)


#5)From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

str(data_select)

library(plyr)
Data<-aggregate(. ~subject + name_activity, data_select, mean)
head(Data,1)
Data<-Data[order(Data$subject,Data$activity),]
write.table(Data, file = "tidydata_mean.txt",row.name=FALSE)
