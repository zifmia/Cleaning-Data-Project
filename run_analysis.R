trainSubjects = read.table("UCI HAR Dataset/train/subject_train.txt")
testSubjects  = read.table("UCI HAR Dataset/test/subject_test.txt")

trainData = read.table("UCI HAR Dataset/train/X_train.txt")
testData  = read.table("UCI HAR Dataset/test/X_test.txt")

trainActivities = read.table("UCI HAR Dataset/train/y_train.txt")
testActivities  = read.table("UCI HAR Dataset/test/y_test.txt")

featureNames = read.table("UCI HAR Dataset/features.txt")

keep = grep("(mean|std)\\(\\)", featureNames$V2)
names = gsub("[()]", "", featureNames[keep,2])

allData = rbind(trainData, testData)
allData = allData[,keep]

allSubjects = rbind(trainSubjects, testSubjects)
allActivities = rbind(trainActivities, testActivities)

allData = cbind(allSubjects, allActivities, allData)
names = c("Subject", "Activity", names)

colnames(allData) = names

subjectAndActivity = interaction(allSubjects$V1, allActivities$V1)
splitData = split(allData, subjectAndActivity)

reducedData = lapply(splitData, colMeans)

print("Still need to replace activity numbers with names")
