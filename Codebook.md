(This description of signals is from features_info.txt in original HAR dataset.)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals 
tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant 
rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter 
with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated 
into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain 
Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional 
signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate the mean and standard deviation of the feature vector for each pattern as 
shown below.  

---------
Complete listing of all data columns in summaryAccelerometerData.txt:

1 Subject:  Integer from 1..30, indicates the test subject measured in this row.

2 Activity:  One of "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS",
  "SITTING", "STANDING", "LAYING". The activity performed by the test subject
  during these measurements.

3 tBodyAcc.mean.X:  Average body acceleration in the X direction.

4 tBodyAcc.mean.Y:  Average body acceleration in the Y direction.

5 tBodyAcc.mean.Z:  Average body acceleration in the Z direction.


6 tBodyAcc.std.X:  Standard deviation of body acceleration in the X direction.

7 tBodyAcc.std.Y:  Standard deviation of body acceleration in the Y direction.

8 tBodyAcc.std.Z:  Standard deviation of body acceleration in the Z direction.


9 tGravityAcc.mean.X:  Average acceleration due to gravity in the X direction (separated from body motion by low pass filter).

10 tGravityAcc.mean.Y:  Average gravitational acceleration in the Y direction.

11 tGravityAcc.mean.Z:  Average gravitational acceleration in the Z direction.


12 tGravityAcc.std.X:  Standard deviation of gravitational acceleration in the X direction.

13 tGravityAcc.std.Y:  Standard deviation of gravitational acceleration in the Y direction.

14 tGravityAcc.std.Z:  Standard deviation of gravitational acceleration in the Z direction.


15 tBodyAccJerk.mean.X: Average jerk (time derivative of acceleration) of body motion in the X direction.

16 tBodyAccJerk.mean.Y: Average jerk of body motion in the Y direction.

17 tBodyAccJerk.mean.Z: Average jerk of body motion in the Z direction.


18 tBodyAccJerk.std.X: Standard deviation of jerk of body motion in the X direction.

19 tBodyAccJerk.std.Y: Standard deviation of jerk of body motion in the Y direction.

20 tBodyAccJerk.std.Z: Standard deviation of jerk of body motion in the Z direction.


21 tBodyGyro.mean.X: Average angular velocity measured by gyroscope about X-axis.

22 tBodyGyro.mean.Y: Average angular velocity measured by gyroscope about Y-axis.

23 tBodyGyro.mean.Z: Average angular velocity measured by gyroscope about Z-axis.


24 tBodyGyro.std.X: Standard deviation of angular velocity measured by gyroscope about X-axis.

25 tBodyGyro.std.Y: Standard deviation of angular velocity measured by gyroscope about Y-axis.

26 tBodyGyro.std.Z: Standard deviation of angular velocity measured by gyroscope about Z-axis.


27 tBodyGyroJerk.mean.X: Average derivative of angular velocity measured by gyroscope about X-axis.

28 tBodyGyroJerk.mean.Y: Average derivative of angular velocity measured by gyroscope about Y-axis.

29 tBodyGyroJerk.mean.Z: Average derivative of angular velocity measured by gyroscope about Z-axis.


30 tBodyGyroJerk.std.X: Average derivative of angular velocity measured by gyroscope about X-axis.

31 tBodyGyroJerk.std.Y: Average derivative of angular velocity measured by gyroscope about Y-axis.

32 tBodyGyroJerk.std.Z: Average derivative of angular velocity measured by gyroscope about Z-axis.


33 tBodyAccMag.mean: Average magnitude of body acceleration.

34 tBodyAccMag.std: Standard deviation of magnitude of body acceleration.


35 tGravityAccMag-mean: Average magnitude of gravitational acceleration

36 tGravityAccMag-std: Standard deviation of magnitude of gravitational acceleration.


37 tBodyAccJerkMag-mean: Average magnitude of jerk of body motion.

38 tBodyAccJerkMag-mean: Standard deviation of magnitude of jerk of body motion.


39 tBodyGyroMag-mean:  Average magnitude of gyroscope angular velocity.

40 tBodyGyroMag-std:  Standard deviation of magnitude of gyroscope angular velocity.


41 tBodyGyroJerkMag:  Average magnitude of derivative of gyroscope motion.

42 tBodyGyroJerkMag:  Standard deviation of magnitude of derivative of gyroscope motion.


43 fBodyAcc.mean.X: Average frequency of body acceleration in X direction.

44 fBodyAcc.mean.Y: Average frequency of body acceleration in Y direction.

45 fBodyAcc.mean.Z: Average frequency of body acceleration in Z direction.


46 fBodyAcc.mean.X: Standard deviation of frequency of body acceleration in X direction.

47 fBodyAcc.mean.Y: Standard deviation of frequency of body acceleration in Y direction.

48 fBodyAcc.mean.Z: Standard deviation of frequency of body acceleration in Z direction.


49 fBodyAccJerk.mean.X: Average frequency of body jerk in X direction.

50 fBodyAccJerk.mean.Y: Average frequency of body jerk in Y direction.

51 fBodyAccJerk.mean.Z: Average frequency of body jerk in Z direction.


52 fBodyAccJerk.mean.X: Standard deviation of frequency of body jerk in X direction.

53 fBodyAccJerk.mean.Y: Standard deviation of frequency of body jerk in Y direction.

54 fBodyAccJerk.mean.Z: Standard deviation of frequency of body jerk in Z direction.


55 fBodyGyro.mean.X: Average frequency of angular velocity measured by gyroscope about X axis.

56 fBodyGyro.mean.Y: Average frequency of angular velocity measured by gyroscope about Y axis.

57 fBodyGyro.mean.Z: Average frequency of angular velocity measured by gyroscope about Z axis.


58 fBodyGyro.std.X: Standard deviation of frequency of angular velocity measured by gyroscope about X axis.

59 fBodyGyro.std.Y: Standard deviation of frequency of angular velocity measured by gyroscope about Y axis.

60 fBodyGyro.std.Z: Standard deviation of frequency of angular velocity measured by gyroscope about Z axis.


61 fBodyAccMag.mean: Average magnitude of frequency of body acceleration.

62 fBodyAccMag.mean: Average magnitude of frequency of body acceleration.



63 fBodyAccJerkMag.mean: Average magnitude of frequency of body jerk.

64 fBodyAccJerkMag.std: Standard deviation of magnitude of frequency of body jerk.


65 fBodyGyroMag.mean: Average magnitude of frequency of angular velocity measured by gyroscope.

66 fBodyGyroMag.std: Standard deviation of magnitude of frequency of angular velocity measured by gyroscope.


67 fBodyGyroJerkMag: Average magnitude of frequency of derivative of angular velocity measured by gyroscope.

68 fBodyGyroJerkMag: Standard deviation of magnitude of frequency of derivative of angular velocity measured by gyroscope.
