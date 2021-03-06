CODE BOOK

A) Participants and Activities

These variables are used to identify the person performing activity of daily living (ADL) as well as the activity type.
-	Participants: the participant -Subject ID. ID ranges from 1 to 30. 
-	Activity: string activity name: 
   1) Walking
   2) Walking Upstairs
   3) Walking Downstairs
   4) Sitting
   5) Standing
   6) Laying

B) Measurements on the mean and standard deviation.

There are 180 observations (30 subjects times 6 activities) and 81 columns (1 for participants, 1 for activity and 78 for aggregated features related to mean and std. The full list is:

 [1] "Participants"                                         
 [2] "Activities"                                           
 [3] "timeBodyAcceleration-mean()-X"                        
 [4] "timeBodyAcceleration-mean()-Y"                        
 [5] "timeBodyAcceleration-mean()-Z"                        
 [6] "timeBodyAcceleration-std()-X"                         
 [7] "timeBodyAcceleration-std()-Y"                         
 [8] "timeBodyAcceleration-std()-Z"                         
 [9] "timeGravityAcceleration-mean()-X"                     
[10] "timeGravityAcceleration-mean()-Y"                     
[11] "timeGravityAcceleration-mean()-Z"                     
[12] "timeGravityAcceleration-std()-X"                      
[13] "timeGravityAcceleration-std()-Y"                      
[14] "timeGravityAcceleration-std()-Z"                      
[15] "timeBodyAccelerationJerk-mean()-X"                    
[16] "timeBodyAccelerationJerk-mean()-Y"                    
[17] "timeBodyAccelerationJerk-mean()-Z"                    
[18] "timeBodyAccelerationJerk-std()-X"                     
[19] "timeBodyAccelerationJerk-std()-Y"                     
[20] "timeBodyAccelerationJerk-std()-Z"                     
[21] "timeBodyGyroscope-mean()-X"                           
[22] "timeBodyGyroscope-mean()-Y"                           
[23] "timeBodyGyroscope-mean()-Z"                           
[24] "timeBodyGyroscope-std()-X"                            
[25] "timeBodyGyroscope-std()-Y"                            
[26] "timeBodyGyroscope-std()-Z"                            
[27] "timeBodyGyroscopeJerk-mean()-X"                       
[28] "timeBodyGyroscopeJerk-mean()-Y"                       
[29] "timeBodyGyroscopeJerk-mean()-Z"                       
[30] "timeBodyGyroscopeJerk-std()-X"                        
[31] "timeBodyGyroscopeJerk-std()-Y"                        
[32] "timeBodyGyroscopeJerk-std()-Z"                        
[33] "timeBodyAccelerationMagnitude-mean()"                 
[34] "timeBodyAccelerationMagnitude-std()"                  
[35] "timeGravityAccelerationMagnitude-mean()"              
[36] "timeGravityAccelerationMagnitude-std()"               
[37] "timeBodyAccelerationJerkMagnitude-mean()"             
[38] "timeBodyAccelerationJerkMagnitude-std()"              
[39] "timeBodyGyroscopeMagnitude-mean()"                    
[40] "timeBodyGyroscopeMagnitude-std()"                     
[41] "timeBodyGyroscopeJerkMagnitude-mean()"                
[42] "timeBodyGyroscopeJerkMagnitude-std()"                 
[43] "frequencyBodyAcceleration-mean()-X"                   
[44] "frequencyBodyAcceleration-mean()-Y"                   
[45] "frequencyBodyAcceleration-mean()-Z"                   
[46] "frequencyBodyAcceleration-std()-X"                    
[47] "frequencyBodyAcceleration-std()-Y"                    
[48] "frequencyBodyAcceleration-std()-Z"                    
[49] "frequencyBodyAcceleration-meanFreq()-X"               
[50] "frequencyBodyAcceleration-meanFreq()-Y"               
[51] "frequencyBodyAcceleration-meanFreq()-Z"               
[52] "frequencyBodyAccelerationJerk-mean()-X"               
[53] "frequencyBodyAccelerationJerk-mean()-Y"               
[54] "frequencyBodyAccelerationJerk-mean()-Z"               
[55] "frequencyBodyAccelerationJerk-std()-X"                
[56] "frequencyBodyAccelerationJerk-std()-Y"                
[57] "frequencyBodyAccelerationJerk-std()-Z"                
[58] "frequencyBodyAccelerationJerk-meanFreq()-X"           
[59] "frequencyBodyAccelerationJerk-meanFreq()-Y"           
[60] "frequencyBodyAccelerationJerk-meanFreq()-Z"           
[61] "frequencyBodyGyroscope-mean()-X"                      
[62] "frequencyBodyGyroscope-mean()-Y"                      
[63] "frequencyBodyGyroscope-mean()-Z"                      
[64] "frequencyBodyGyroscope-std()-X"                       
[65] "frequencyBodyGyroscope-std()-Y"                       
[66] "frequencyBodyGyroscope-std()-Z"                       
[67] "frequencyBodyGyroscope-meanFreq()-X"                  
[68] "frequencyBodyGyroscope-meanFreq()-Y"                  
[69] "frequencyBodyGyroscope-meanFreq()-Z"                  
[70] "frequencyBodyAccelerationMagnitude-mean()"            
[71] "frequencyBodyAccelerationMagnitude-std()"             
[72] "frequencyBodyAccelerationMagnitude-meanFreq()"        
[73] "frequencyBodyBodyAccelerationJerkMagnitude-mean()"    
[74] "frequencyBodyBodyAccelerationJerkMagnitude-std()"     
[75] "frequencyBodyBodyAccelerationJerkMagnitude-meanFreq()"
[76] "frequencyBodyBodyGyroscopeMagnitude-mean()"           
[77] "frequencyBodyBodyGyroscopeMagnitude-std()"            
[78] "frequencyBodyBodyGyroscopeMagnitude-meanFreq()"       
[79] "frequencyBodyBodyGyroscopeJerkMagnitude-mean()"       
[80] "frequencyBodyBodyGyroscopeJerkMagnitude-std()"        
[81] "frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()"  

Note: units are in g-gravity for acceleration (data obtained from the accelerometers) and rad/s for angular velocity (data obtained from the gyroscope)
