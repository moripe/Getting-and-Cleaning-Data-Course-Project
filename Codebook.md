

##Codebook

#Subjet and activity:

* Subject: integer id

* Name_activity:
  + Walking
  + Walking Upstairs
  + Walking Downstairs
  + Sitting
  + Standing
  + Laying

#Measurement Means:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (frequencyBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscopeMagnitude-XYZ, frequencyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

+ timeBodyAccelerometer-mean()-X                     
+ timeBodyAccelerometer-mean()-Y                     
+ timeBodyAccelerometer-mean()-Z                     
+ timeBodyAccelerometer-std()-X                      
+ timeBodyAccelerometer-std()-Y                      
+ timeBodyAccelerometer-std()-Z                      
+ timeGravityAccelerometer-mean()-X                  
+ timeGravityAccelerometer-mean()-Y                  
+ timeGravityAccelerometer-mean()-Z                  
+ timeGravityAccelerometer-std()-X                   
+ timeGravityAccelerometer-std()-Y                   
+ timeGravityAccelerometer-std()-Z                   
+ timeBodyAccelerometerJerk-mean()-X                 
+ timeBodyAccelerometerJerk-mean()-Y                 
+ timeBodyAccelerometerJerk-mean()-Z                 
+ timeBodyAccelerometerJerk-std()-X                  
+ timeBodyAccelerometerJerk-std()-Y                  
+ timeBodyAccelerometerJerk-std()-Z                  
+ timeBodyGyroscope-mean()-X                         
+ timeBodyGyroscope-mean()-Y                         
+ timeBodyGyroscope-mean()-Z                         
+ timeBodyGyroscope-std()-X                          
+ timeBodyGyroscope-std()-Y                          
+ timeBodyGyroscope-std()-Z                          
+ timeBodyGyroscopeJerk-mean()-X                     
+ timeBodyGyroscopeJerk-mean()-Y                     
+ timeBodyGyroscopeJerk-mean()-Z                     
+ timeBodyGyroscopeJerk-std()-X                      
+ timeBodyGyroscopeJerk-std()-Y                      
+ timeBodyGyroscopeJerk-std()-Z                      
+ timeBodyAccelerometerMagnitude-mean()              
+ timeBodyAccelerometerMagnitude-std()               
+ timeGravityAccelerometerMagnitude-mean()           
+ timeGravityAccelerometerMagnitude-std()            
+ timeBodyAccelerometerJerkMagnitude-mean()          
+ timeBodyAccelerometerJerkMagnitude-std()           
+ timeBodyGyroscopeMagnitude-mean()                  
+ timeBodyGyroscopeMagnitude-std()                   
+ timeBodyGyroscopeJerkMagnitude-mean()              
+ timeBodyGyroscopeJerkMagnitude-std()               
+ frequencyBodyAccelerometer-mean()-X                
+ frequencyBodyAccelerometer-mean()-Y                
+ frequencyBodyAccelerometer-mean()-Z                
+ frequencyBodyAccelerometer-std()-X                 
+ frequencyBodyAccelerometer-std()-Y                 
+ frequencyBodyAccelerometer-std()-Z                 
+ frequencyBodyAccelerometerJerk-mean()-X            
+ frequencyBodyAccelerometerJerk-mean()-Y            
+ frequencyBodyAccelerometerJerk-mean()-Z            
+ frequencyBodyAccelerometerJerk-std()-X             
+ frequencyBodyAccelerometerJerk-std()-Y             
+ frequencyBodyAccelerometerJerk-std()-Z             
+ frequencyBodyGyroscope-mean()-X                    
+ frequencyBodyGyroscope-mean()-Y                    
+ frequencyBodyGyroscope-mean()-Z                    
+ frequencyBodyGyroscope-std()-X                     
+ frequencyBodyGyroscope-std()-Y                     
+ frequencyBodyGyroscope-std()-Z                     
+ frequencyBodyAccelerometerMagnitude-mean()         
+ frequencyBodyAccelerometerMagnitude-std()          
+ frequencyBodyAccelerometerJerkMagnitude-mean()     
+ frequencyBodyAccelerometerJerkMagnitude-std()      
+ frequencyBodyGyroscopeMagnitude-mean()             
+ frequencyBodyGyroscopeMagnitude-std()              
+ frequencyBodyGyroscopeJerkMagnitude-mean()         
+ frequencyBodyGyroscopeJerkMagnitude-std()          
                                                     
                                    
The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation                                                     
                                                              
                                                              
