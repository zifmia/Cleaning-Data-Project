# Getting and Cleaning Data Class Project

### Creates a summary data set from the UCI HAR Dataset

Assumes the UCI HAR data has been unzipped into the current directory and is in
the "UCI HAR Dataset" folder.

The run_analysis.R script will creates a reduced dataset of summary statistics 
titled summaryAccelerometerData.txt

The resulting data file can be read into R by 

    read.table("summaryAccelerometerData.txt", header=TRUE)  

For each basic accelerometer measurement, the mean and standard deviation
are averaged grouped by test subject and activity.  Training and test data
are merged together to create this dataset, as the purpose of this analysis
is to generate statistics of the data rather than perform prediction or 
machine learning.

There are 33 different accelerometer measurements in all, for a total of 
66 data columns (mean and standard deviation), plus 2 columns labelling the
test subject and test activity. 

The dataset contains 30 test subjects measured performing 6 different activities
for a total of 180 rows of data.

Detailed descriptions of the table columns can be found in Codebook.md

------------


