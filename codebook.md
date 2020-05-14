# Original Data Set Feature Description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcceleration-XYZ and timeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMag, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcceleration-XYZ, frequencyBodyAccelerationJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerationJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

"activity" : Activity label with possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING  

"subject" : An identifier of the subject who carried out the experiment.
"timeBodyAccelerationMean-X"
"timeBodyAccelerationMean-Y"
"timeBodyAccelerationMean-Z"
"timeGravityAccelerationMean-X"
"timeGravityAccelerationMean-Y"
"timeGravityAccelerationMean-Z"
"timeBodyAccelerationJerkMean-X"
"timeBodyAccelerationJerkMean-Y"
"timeBodyAccelerationJerkMean-Z"
"timeBodyGyroscopeMean-X"
"timeBodyGyroscopeMean-Y"
"timeBodyGyroscopeMean-Z"
"timeBodyGyroscopeJerkMean-X"
"timeBodyGyroscopeJerkMean-Y"
"timeBodyGyroscopeJerkMean-Z"
"timeBodyAccelerationMagnitudeMean"
"timeGravityAccelerationMagnitudeMean"
"timeBodyAccelerationJerkMagnitudeMean"
"timeBodyGyroscopeMagnitudeMean"
"timeBodyGyroscopeJerkMagnitudeMean"
"frequencyBodyAccelerationMean-X"
"frequencyBodyAccelerationMean-Y"
"frequencyBodyAccelerationMean-Z"
"frequencyBodyAccelerationMeanFrequency-X"
"frequencyBodyAccelerationMeanFrequency-Y"
"frequencyBodyAccelerationMeanFrequency-Z"
"frequencyBodyAccelerationJerkMean-X"
"frequencyBodyAccelerationJerkMean-Y"
"frequencyBodyAccelerationJerkMean-Z"
"frequencyBodyAccelerationJerkMeanFrequency-X"
"frequencyBodyAccelerationJerkMeanFrequency-Y"
"frequencyBodyAccelerationJerkMeanFrequency-Z"
"frequencyBodyGyroscopeMean-X"
"frequencyBodyGyroscopeMean-Y"
"frequencyBodyGyroscopeMean-Z"
"frequencyBodyGyroscopeMeanFrequency-X"
"frequencyBodyGyroscopeMeanFrequency-Y"
"frequencyBodyGyroscopeMeanFrequency-Z"
"frequencyBodyAccelerationMagnitudeMean"
"frequencyBodyAccelerationMagnitudeMeanFrequency"
"frequencyBodyAccelerationJerkMagnitudeMean"
"frequencyBodyAccelerationJerkMagnitudeMeanFrequency"
"frequencyBodyGyroscopeMagnitudeMean"
"frequencyBodyGyroscopeMagnitudeMeanFrequency"
"frequencyBodyGyroscopeJerkMagnitudeMean"
"frequencyBodyGyroscopeJerkMagnitudeMeanFrequency"
"angle(tBodyAccelerationMean,gravity)"
"angle(tBodyAccelerationJerkMean),gravityMean)"
"angle(tBodyGyroscopeMean,gravityMean)"
"angle(tBodyGyroscopeJerkMean,gravityMean)"
"angle(X,gravityMean)"
"angle(Y,gravityMean)"
"angle(Z,gravityMean)"
"timeBodyAccelerationSTD-X"
"timeBodyAccelerationSTD-Y"
"timeBodyAccelerationSTD-Z"
"timeGravityAccelerationSTD-X"
"timeGravityAccelerationSTD-Y"
"timeGravityAccelerationSTD-Z"
"timeBodyAccelerationJerkSTD-X"
"timeBodyAccelerationJerkSTD-Y"
"timeBodyAccelerationJerkSTD-Z"
"timeBodyGyroscopeSTD-X"
"timeBodyGyroscopeSTD-Y"
"timeBodyGyroscopeSTD-Z"
"timeBodyGyroscopeJerkSTD-X"
"timeBodyGyroscopeJerkSTD-Y"
"timeBodyGyroscopeJerkSTD-Z"
"timeBodyAccelerationMagnitudeSTD"
"timeGravityAccelerationMagnitudeSTD"
"timeBodyAccelerationJerkMagnitudeSTD"
"timeBodyGyroscopeMagnitudeSTD"
"timeBodyGyroscopeJerkMagnitudeSTD"
"frequencyBodyAccelerationSTD-X"
"frequencyBodyAccelerationSTD-Y"
"frequencyBodyAccelerationSTD-Z"
"frequencyBodyAccelerationJerkSTD-X"
"frequencyBodyAccelerationJerkSTD-Y"
"frequencyBodyAccelerationJerkSTD-Z"
"frequencyBodyGyroscopeSTD-X"
"frequencyBodyGyroscopeSTD-Y"
"frequencyBodyGyroscopeSTD-Z"
"frequencyBodyAccelerationMagnitudeSTD"
"frequencyBodyAccelerationJerkMagnitudeSTD"
"frequencyBodyGyroscopeMagnitudeSTD"
"frequencyBodyGyroscopeJerkMagnitudeSTD"


The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
