---
title: "CodeBook"
author: "Me"
date: "7/9/2020"
output: html_document
---

This code book summarizes the variables from the TidyDataSet.txt
# Source
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Data description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Qualitative Variables
activity - lists the six activities from the data description
subject - ID of the test subject

# Quantitative Variables
The information for gathering these data points is in the data description. The TidyDataSet took the average of each of these variables by activity and subject. These are the resulting variables.
"timeBodyAccelerometerMeanX"                  "timeBodyAccelerometerMeanY"                 
"timeBodyAccelerometerMeanZ"                  "timeGravityAccelerometerMeanX"              
"timeGravityAccelerometerMeanY"               "timeGravityAccelerometerMeanZ"              
"timeBodyAccelerometerJerkMeanX"              "timeBodyAccelerometerJerkMeanY"             
"timeBodyAccelerometerJerkMeanZ"              "timeBodyGyroscopeMeanX"                     
"timeBodyGyroscopeMeanY"                      "timeBodyGyroscopeMeanZ"                     
"timeBodyGyroscopeJerkMeanX"                  "timeBodyGyroscopeJerkMeanY"                 
"timeBodyGyroscopeJerkMeanZ"                  "timeBodyAccelerometerMagnitudeMean"         
"timeGravityAccelerometerMagnitudeMean"       "timeBodyAccelerometerJerkMagnitudeMean"     
"timeBodyGyroscopeMagnitudeMean"              "timeBodyGyroscopeJerkMagnitudeMean"         
"frequencyBodyAccelerometerMeanX"             "frequencyBodyAccelerometerMeanY"            
"frequencyBodyAccelerometerMeanZ"             "frequencyBodyAccelerometerJerkMeanX"        
"frequencyBodyAccelerometerJerkMeanY"         "frequencyBodyAccelerometerJerkMeanZ"        
"frequencyBodyGyroscopeMeanX"                 "frequencyBodyGyroscopeMeanY"                
"frequencyBodyGyroscopeMeanZ"                 "frequencyBodyAccelerometerMagnitudeMean"    
"frequencyBodyAccelerometerJerkMagnitudeMean" "frequencyBodyGyroscopeMagnitudeMean"        
"frequencyBodyGyroscopeJerkMagnitudeMean"     "timeBodyAccelerometerStdX"                  
"timeBodyAccelerometerStdY"                   "timeBodyAccelerometerStdZ"                  
"timeGravityAccelerometerStdX"                "timeGravityAccelerometerStdY"               
"timeGravityAccelerometerStdZ"                "timeBodyAccelerometerJerkStdX"              
"timeBodyAccelerometerJerkStdY"               "timeBodyAccelerometerJerkStdZ"              
"timeBodyGyroscopeStdX"                       "timeBodyGyroscopeStdY"                      
"timeBodyGyroscopeStdZ"                       "timeBodyGyroscopeJerkStdX"                  
"timeBodyGyroscopeJerkStdY"                   "timeBodyGyroscopeJerkStdZ"                  
"timeBodyAccelerometerMagnitudeStd"           "timeGravityAccelerometerMagnitudeStd"       
"timeBodyAccelerometerJerkMagnitudeStd"       "timeBodyGyroscopeMagnitudeStd"              
"timeBodyGyroscopeJerkMagnitudeStd"           "frequencyBodyAccelerometerStdX"             
"frequencyBodyAccelerometerStdY"              "frequencyBodyAccelerometerStdZ"             
"frequencyBodyAccelerometerJerkStdX"          "frequencyBodyAccelerometerJerkStdY"         
"frequencyBodyAccelerometerJerkStdZ"          "frequencyBodyGyroscopeStdX"                 
"frequencyBodyGyroscopeStdY"                  "frequencyBodyGyroscopeStdZ"                 
"frequencyBodyAccelerometerMagnitudeStd"      "frequencyBodyAccelerometerJerkMagnitudeStd" 
"frequencyBodyGyroscopeMagnitudeStd"          "frequencyBodyGyroscopeJerkMagnitudeStd"

#Initial data set used for this data:
activity_labels.txt - labels 1-6 with the true activity description
features.txt - gives the column names for each of the train and test data sets
test/subject_test.txt - each row identifies the tester for the sample in TEST
test/X_test.txt - TEST data
test/Y_test.txt - gives the activity keys for TEST that can be joined with activity_labels.txt
train/subject_train.txt - each row identifies the tester for the sample in TRAIN
test/X_train.txt - TRAIN data
test/Y_train.txt - gives the activity keys for TRAIN that can be joined with activity_labels.txt

