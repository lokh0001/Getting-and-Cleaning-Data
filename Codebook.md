Variables

subject                    1..2
    Subject number
                           1..30 .Unique identifier assigned to each subject

label                      6..18
    Acitivity label
                           "WALKING"
                           "WALKING_UPSTAIRS"
                           "WALKING_DOWNSTAIRS"
                           "SITTING"
                           "STANDING"
                           "LAYING"

tbodyaccmeanx              12

tbodyaccmeany              12

tbodyaccmeanz              12

tbodyaccstdx               12

tbodyaccstdy               12

tbodyaccstdz               12

tgravityaccmeanx           12

tgravityaccmeany           12
  
tgravityaccmeanz           12

tgravityaccstdx            12

tgravityaccstdy            12

tgravityaccstdz            12

tbodyaccjerkmeanx          12

tbodyaccjerkmeany          12

tbodyaccjerkmeanz          12
  
tbodyaccjerkstdx           12

tbodyaccjerkstdy           12

tbodyaccjerkstdz           12

tbodygyromeanx             12

tbodygyromeany             12

tbodygyromeanz             12

tbodygyrostdx              12

tbodygyrostdy              12

tbodygyrostdz              12

tbodygyrojerkmeanx         12

tbodygyrojerkmeany         12

tbodygyrojerkmeanz         12

tbodygyrojerkstdx          12

tbodygyrojerkstdy          12

tbodygyrojerkstdz          12

tbodyaccmagmean            12

tbodyaccmagstd             12
  
tgravityaccmagmean         12

tgravityaccmagstd          12

tbodyaccjerkmagmean        12

tbodyaccjerkmagstd         12

tbodygyromagmean           12

tbodygyromagstd            12

tbodygyrojerkmagmean       12

tbodygyrojerkmagstd        12

fbodyaccmeanx              12

fbodyaccmeany              12

fbodyaccmeanz              12

fbodyaccstdx               12

fbodyaccstdy               12

fbodyaccstdz               12

fbodyaccjerkmeanx          12

fbodyaccjerkmeany          12

fbodyaccjerkmeanz          12

fbodyaccjerkstdx           12

fbodyaccjerkstdy           12

fbodyaccjerkstdz           12

fbodygyromeanx             12

fbodygyromeany             12

fbodygyromeanz             12

fbodygyrostdx              12

fbodygyrostdy              12

fbodygyrostdz              12

fbodyaccmagmean            12

fbodyaccmagstd             12

fbodybodyaccjerkmagmean    12

fbodybodyaccjerkmagstd     12

fbodybodygyromagmean       12

fbodybodygyromagstd        12

fbodybodygyrojerkmagmean   12

fbodybodygyrojerkmagstd    12

Data
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

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