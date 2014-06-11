library(plyr)

# combine training and test subject codes
trainSubjects = read.table("UCI HAR Dataset/train/subject_train.txt")
testSubjects  = read.table("UCI HAR Dataset/test/subject_test.txt")
allSubjects = rbind(trainSubjects, testSubjects)

# combine training and test activity codes
trainActivities = read.table("UCI HAR Dataset/train/y_train.txt")
testActivities  = read.table("UCI HAR Dataset/test/y_test.txt")
allActivities = rbind(trainActivities, testActivities)

# combine training and test accelerometer data
trainData = read.table("UCI HAR Dataset/train/X_train.txt")
testData  = read.table("UCI HAR Dataset/test/X_test.txt")
allData = rbind(trainData, testData)

# read in feature names, and select out the mean and standard deviation measurements
allFeatureNames = read.table("UCI HAR Dataset/features.txt")
variablesToKeep = grep("(mean|std)\\(\\)", allFeatureNames$V2)
featureNames = gsub("[()]", "", allFeatureNames[variablesToKeep,2])

# restrict accelerometer data to desired measurements
allData = allData[,variablesToKeep]

# add subject and activity codes to accelerometer data set
allData = cbind(allSubjects, allActivities, allData)
colnames(allData) = c("Subject", "Activity", featureNames)

# reduce data by taking averages of all variables grouped by test subject and activity
subjectAndActivity = interaction(allSubjects$V1, allActivities$V1)
splitData = split(allData, subjectAndActivity)
summaryData = data.frame(laply(splitData, colMeans))

# replace activity codes with descriptive labels
activityLabels = read.table("UCI HAR Dataset/activity_labels.txt")
summaryData$Activity = activityLabels[match(summaryData$Activity, activityLabels$V1),2]

# write out summary data set
write.table(summaryData, "summaryAccelerometerData.txt", row.names=FALSE, quote=FALSE)
