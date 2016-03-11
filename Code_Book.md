# Codebook
Mohamed Maftah  
23-08-2015  
## Project Description
The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

##Study design and data processing

###Collection of the raw data
The data was collected using the embedded accelerometer and gyroscope of the Samsung Galaxy S II from 30 individuals each wearing one on their waist while performing different activities.

###Notes on the original (raw) data 
A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Creating the tidy datafile

###Guide to create the tidy data file
1) Download the data from : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
2) Unzip the file.
3) Set your working directory to : UCI HAR Dataset.
4) Run run_analysis.R.

###Cleaning of the data
The cleaning script does the following :

1. Merges the training and the test sets to create one data set by row binding them.
2. Extracts only the measurements on the mean and standard deviation for each measurement using the 'features.txt' file and regular expressions.
3. Gives descriptive activity names to the activities in the data set by row binding the 'Y_test.txt' and 'Y_train'.txt files and subseting them to the 'activity_lable.txt' file.
4. Labels the data set with descriptive variable names by taking the names of the extracted columns from the 'features.txt' file in step 2 and editing them.
5. Creates a tidy data set with the average of each variable for each activity and each subject by aggregating on the activity and the subject_id using the 'mean' function.
[link to the readme document that describes the code in greater detail](https://github.com/Simo--/GettingAndCleaningData/blob/master/README.md)

##Description of the variables in the tiny_data.txt file
 - Dimensions of the dataset
 180 observations and 80 variables
 - Summary of the data

```
##                Activity  TimeBodyAccelerometerMeanX
##  LAYING            :30   Min.   :0.2216            
##  SITTING           :30   1st Qu.:0.2712            
##  STANDING          :30   Median :0.2770            
##  WALKING           :30   Mean   :0.2743            
##  WALKING DOWNSTAIRS:30   3rd Qu.:0.2800            
##  WALKING UPSTAIRS  :30   Max.   :0.3015            
##  TimeBodyAccelerometerMeanY TimeBodyAccelerometerMeanZ
##  Min.   :-0.040514          Min.   :-0.15251          
##  1st Qu.:-0.020022          1st Qu.:-0.11207          
##  Median :-0.017262          Median :-0.10819          
##  Mean   :-0.017876          Mean   :-0.10916          
##  3rd Qu.:-0.014936          3rd Qu.:-0.10443          
##  Max.   :-0.001308          Max.   :-0.07538          
##  TimeBodyAccelerometersTimedX TimeBodyAccelerometersTimedY
##  Min.   :-0.9961              Min.   :-0.99024            
##  1st Qu.:-0.9799              1st Qu.:-0.94205            
##  Median :-0.7526              Median :-0.50897            
##  Mean   :-0.5577              Mean   :-0.46046            
##  3rd Qu.:-0.1984              3rd Qu.:-0.03077            
##  Max.   : 0.6269              Max.   : 0.61694            
##  TimeBodyAccelerometersTimedZ TimeGraviTimeyAccelerometerMeanX
##  Min.   :-0.9877              Min.   :-0.6800                 
##  1st Qu.:-0.9498              1st Qu.: 0.8376                 
##  Median :-0.6518              Median : 0.9208                 
##  Mean   :-0.5756              Mean   : 0.6975                 
##  3rd Qu.:-0.2306              3rd Qu.: 0.9425                 
##  Max.   : 0.6090              Max.   : 0.9745                 
##  TimeGraviTimeyAccelerometerMeanY TimeGraviTimeyAccelerometerMeanZ
##  Min.   :-0.47989                 Min.   :-0.49509                
##  1st Qu.:-0.23319                 1st Qu.:-0.11726                
##  Median :-0.12782                 Median : 0.02384                
##  Mean   :-0.01621                 Mean   : 0.07413                
##  3rd Qu.: 0.08773                 3rd Qu.: 0.14946                
##  Max.   : 0.95659                 Max.   : 0.95787                
##  TimeGraviTimeyAccelerometersTimedX TimeGraviTimeyAccelerometersTimedY
##  Min.   :-0.9968                    Min.   :-0.9942                   
##  1st Qu.:-0.9825                    1st Qu.:-0.9711                   
##  Median :-0.9695                    Median :-0.9590                   
##  Mean   :-0.9638                    Mean   :-0.9524                   
##  3rd Qu.:-0.9509                    3rd Qu.:-0.9370                   
##  Max.   :-0.8296                    Max.   :-0.6436                   
##  TimeGraviTimeyAccelerometersTimedZ TimeBodyAccelerometerJerkMeanX
##  Min.   :-0.9910                    Min.   :0.04269               
##  1st Qu.:-0.9605                    1st Qu.:0.07396               
##  Median :-0.9450                    Median :0.07640               
##  Mean   :-0.9364                    Mean   :0.07947               
##  3rd Qu.:-0.9180                    3rd Qu.:0.08330               
##  Max.   :-0.6102                    Max.   :0.13019               
##  TimeBodyAccelerometerJerkMeanY TimeBodyAccelerometerJerkMeanZ
##  Min.   :-0.0386872             Min.   :-0.067458             
##  1st Qu.: 0.0004664             1st Qu.:-0.010601             
##  Median : 0.0094698             Median :-0.003861             
##  Mean   : 0.0075652             Mean   :-0.004953             
##  3rd Qu.: 0.0134008             3rd Qu.: 0.001958             
##  Max.   : 0.0568186             Max.   : 0.038053             
##  TimeBodyAccelerometerJerksTimedX TimeBodyAccelerometerJerksTimedY
##  Min.   :-0.9946                  Min.   :-0.9895                 
##  1st Qu.:-0.9832                  1st Qu.:-0.9724                 
##  Median :-0.8104                  Median :-0.7756                 
##  Mean   :-0.5949                  Mean   :-0.5654                 
##  3rd Qu.:-0.2233                  3rd Qu.:-0.1483                 
##  Max.   : 0.5443                  Max.   : 0.3553                 
##  TimeBodyAccelerometerJerksTimedZ TimeBodyGyroscopeMeanX
##  Min.   :-0.99329                 Min.   :-0.20578      
##  1st Qu.:-0.98266                 1st Qu.:-0.04712      
##  Median :-0.88366                 Median :-0.02871      
##  Mean   :-0.73596                 Mean   :-0.03244      
##  3rd Qu.:-0.51212                 3rd Qu.:-0.01676      
##  Max.   : 0.03102                 Max.   : 0.19270      
##  TimeBodyGyroscopeMeanY TimeBodyGyroscopeMeanZ TimeBodyGyroscopesTimedX
##  Min.   :-0.20421       Min.   :-0.07245       Min.   :-0.9943         
##  1st Qu.:-0.08955       1st Qu.: 0.07475       1st Qu.:-0.9735         
##  Median :-0.07318       Median : 0.08512       Median :-0.7890         
##  Mean   :-0.07426       Mean   : 0.08744       Mean   :-0.6916         
##  3rd Qu.:-0.06113       3rd Qu.: 0.10177       3rd Qu.:-0.4414         
##  Max.   : 0.02747       Max.   : 0.17910       Max.   : 0.2677         
##  TimeBodyGyroscopesTimedY TimeBodyGyroscopesTimedZ
##  Min.   :-0.9942          Min.   :-0.9855         
##  1st Qu.:-0.9629          1st Qu.:-0.9609         
##  Median :-0.8017          Median :-0.8010         
##  Mean   :-0.6533          Mean   :-0.6164         
##  3rd Qu.:-0.4196          3rd Qu.:-0.3106         
##  Max.   : 0.4765          Max.   : 0.5649         
##  TimeBodyGyroscopeJerkMeanX TimeBodyGyroscopeJerkMeanY
##  Min.   :-0.15721           Min.   :-0.07681          
##  1st Qu.:-0.10322           1st Qu.:-0.04552          
##  Median :-0.09868           Median :-0.04112          
##  Mean   :-0.09606           Mean   :-0.04269          
##  3rd Qu.:-0.09110           3rd Qu.:-0.03842          
##  Max.   :-0.02209           Max.   :-0.01320          
##  TimeBodyGyroscopeJerkMeanZ TimeBodyGyroscopeJerksTimedX
##  Min.   :-0.092500          Min.   :-0.9965             
##  1st Qu.:-0.061725          1st Qu.:-0.9800             
##  Median :-0.053430          Median :-0.8396             
##  Mean   :-0.054802          Mean   :-0.7036             
##  3rd Qu.:-0.048985          3rd Qu.:-0.4629             
##  Max.   :-0.006941          Max.   : 0.1791             
##  TimeBodyGyroscopeJerksTimedY TimeBodyGyroscopeJerksTimedZ
##  Min.   :-0.9971              Min.   :-0.9954             
##  1st Qu.:-0.9832              1st Qu.:-0.9848             
##  Median :-0.8942              Median :-0.8610             
##  Mean   :-0.7636              Mean   :-0.7096             
##  3rd Qu.:-0.5861              3rd Qu.:-0.4741             
##  Max.   : 0.2959              Max.   : 0.1932             
##  TimeBodyAccelerometerMagnitudeMean TimeBodyAccelerometerMagnitudesTimed
##  Min.   :-0.9865                    Min.   :-0.9865                     
##  1st Qu.:-0.9573                    1st Qu.:-0.9430                     
##  Median :-0.4829                    Median :-0.6074                     
##  Mean   :-0.4973                    Mean   :-0.5439                     
##  3rd Qu.:-0.0919                    3rd Qu.:-0.2090                     
##  Max.   : 0.6446                    Max.   : 0.4284                     
##  TimeGraviTimeyAccelerometerMagnitudeMean
##  Min.   :-0.9865                         
##  1st Qu.:-0.9573                         
##  Median :-0.4829                         
##  Mean   :-0.4973                         
##  3rd Qu.:-0.0919                         
##  Max.   : 0.6446                         
##  TimeGraviTimeyAccelerometerMagnitudesTimed
##  Min.   :-0.9865                           
##  1st Qu.:-0.9430                           
##  Median :-0.6074                           
##  Mean   :-0.5439                           
##  3rd Qu.:-0.2090                           
##  Max.   : 0.4284                           
##  TimeBodyAccelerometerJerkMagnitudeMean
##  Min.   :-0.9928                       
##  1st Qu.:-0.9807                       
##  Median :-0.8168                       
##  Mean   :-0.6079                       
##  3rd Qu.:-0.2456                       
##  Max.   : 0.4345                       
##  TimeBodyAccelerometerJerkMagnitudesTimed TimeBodyGyroscopeMagnitudeMean
##  Min.   :-0.9946                          Min.   :-0.9807               
##  1st Qu.:-0.9765                          1st Qu.:-0.9461               
##  Median :-0.8014                          Median :-0.6551               
##  Mean   :-0.5842                          Mean   :-0.5652               
##  3rd Qu.:-0.2173                          3rd Qu.:-0.2159               
##  Max.   : 0.4506                          Max.   : 0.4180               
##  TimeBodyGyroscopeMagnitudesTimed TimeBodyGyroscopeJerkMagnitudeMean
##  Min.   :-0.9814                  Min.   :-0.99732                  
##  1st Qu.:-0.9476                  1st Qu.:-0.98515                  
##  Median :-0.7420                  Median :-0.86479                  
##  Mean   :-0.6304                  Mean   :-0.73637                  
##  3rd Qu.:-0.3602                  3rd Qu.:-0.51186                  
##  Max.   : 0.3000                  Max.   : 0.08758                  
##  TimeBodyGyroscopeJerkMagnitudesTimed FrequencyBodyAccelerometerMeanX
##  Min.   :-0.9977                      Min.   :-0.9952                
##  1st Qu.:-0.9805                      1st Qu.:-0.9787                
##  Median :-0.8809                      Median :-0.7691                
##  Mean   :-0.7550                      Mean   :-0.5758                
##  3rd Qu.:-0.5767                      3rd Qu.:-0.2174                
##  Max.   : 0.2502                      Max.   : 0.5370                
##  FrequencyBodyAccelerometerMeanY FrequencyBodyAccelerometerMeanZ
##  Min.   :-0.98903                Min.   :-0.9895                
##  1st Qu.:-0.95361                1st Qu.:-0.9619                
##  Median :-0.59498                Median :-0.7236                
##  Mean   :-0.48873                Mean   :-0.6297                
##  3rd Qu.:-0.06341                3rd Qu.:-0.3183                
##  Max.   : 0.52419                Max.   : 0.2807                
##  FrequencyBodyAccelerometersTimedX FrequencyBodyAccelerometersTimedY
##  Min.   :-0.9966                   Min.   :-0.99068                 
##  1st Qu.:-0.9820                   1st Qu.:-0.94042                 
##  Median :-0.7470                   Median :-0.51338                 
##  Mean   :-0.5522                   Mean   :-0.48148                 
##  3rd Qu.:-0.1966                   3rd Qu.:-0.07913                 
##  Max.   : 0.6585                   Max.   : 0.56019                 
##  FrequencyBodyAccelerometersTimedZ FrequencyBodyAccelerometerMeanFreqX
##  Min.   :-0.9872                   Min.   :-0.63591                   
##  1st Qu.:-0.9459                   1st Qu.:-0.39165                   
##  Median :-0.6441                   Median :-0.25731                   
##  Mean   :-0.5824                   Mean   :-0.23227                   
##  3rd Qu.:-0.2655                   3rd Qu.:-0.06105                   
##  Max.   : 0.6871                   Max.   : 0.15912                   
##  FrequencyBodyAccelerometerMeanFreqY FrequencyBodyAccelerometerMeanFreqZ
##  Min.   :-0.379518                   Min.   :-0.52011                   
##  1st Qu.:-0.081314                   1st Qu.:-0.03629                   
##  Median : 0.007855                   Median : 0.06582                   
##  Mean   : 0.011529                   Mean   : 0.04372                   
##  3rd Qu.: 0.086281                   3rd Qu.: 0.17542                   
##  Max.   : 0.466528                   Max.   : 0.40253                   
##  FrequencyBodyAccelerometerJerkMeanX FrequencyBodyAccelerometerJerkMeanY
##  Min.   :-0.9946                     Min.   :-0.9894                    
##  1st Qu.:-0.9828                     1st Qu.:-0.9725                    
##  Median :-0.8126                     Median :-0.7817                    
##  Mean   :-0.6139                     Mean   :-0.5882                    
##  3rd Qu.:-0.2820                     3rd Qu.:-0.1963                    
##  Max.   : 0.4743                     Max.   : 0.2767                    
##  FrequencyBodyAccelerometerJerkMeanZ FrequencyBodyAccelerometerJerksTimedX
##  Min.   :-0.9920                     Min.   :-0.9951                      
##  1st Qu.:-0.9796                     1st Qu.:-0.9847                      
##  Median :-0.8707                     Median :-0.8254                      
##  Mean   :-0.7144                     Mean   :-0.6121                      
##  3rd Qu.:-0.4697                     3rd Qu.:-0.2475                      
##  Max.   : 0.1578                     Max.   : 0.4768                      
##  FrequencyBodyAccelerometerJerksTimedY
##  Min.   :-0.9905                      
##  1st Qu.:-0.9737                      
##  Median :-0.7852                      
##  Mean   :-0.5707                      
##  3rd Qu.:-0.1685                      
##  Max.   : 0.3498                      
##  FrequencyBodyAccelerometerJerksTimedZ
##  Min.   :-0.993108                    
##  1st Qu.:-0.983747                    
##  Median :-0.895121                    
##  Mean   :-0.756489                    
##  3rd Qu.:-0.543787                    
##  Max.   :-0.006236                    
##  FrequencyBodyAccelerometerJerkMeanFreqX
##  Min.   :-0.57604                       
##  1st Qu.:-0.28966                       
##  Median :-0.06091                       
##  Mean   :-0.06910                       
##  3rd Qu.: 0.17660                       
##  Max.   : 0.33145                       
##  FrequencyBodyAccelerometerJerkMeanFreqY
##  Min.   :-0.60197                       
##  1st Qu.:-0.39751                       
##  Median :-0.23209                       
##  Mean   :-0.22810                       
##  3rd Qu.:-0.04721                       
##  Max.   : 0.19568                       
##  FrequencyBodyAccelerometerJerkMeanFreqZ FrequencyBodyGyroscopeMeanX
##  Min.   :-0.62756                        Min.   :-0.9931            
##  1st Qu.:-0.30867                        1st Qu.:-0.9697            
##  Median :-0.09187                        Median :-0.7300            
##  Mean   :-0.13760                        Mean   :-0.6367            
##  3rd Qu.: 0.03858                        3rd Qu.:-0.3387            
##  Max.   : 0.23011                        Max.   : 0.4750            
##  FrequencyBodyGyroscopeMeanY FrequencyBodyGyroscopeMeanZ
##  Min.   :-0.9940             Min.   :-0.9860            
##  1st Qu.:-0.9700             1st Qu.:-0.9624            
##  Median :-0.8141             Median :-0.7909            
##  Mean   :-0.6767             Mean   :-0.6044            
##  3rd Qu.:-0.4458             3rd Qu.:-0.2635            
##  Max.   : 0.3288             Max.   : 0.4924            
##  FrequencyBodyGyroscopesTimedX FrequencyBodyGyroscopesTimedY
##  Min.   :-0.9947               Min.   :-0.9944              
##  1st Qu.:-0.9750               1st Qu.:-0.9602              
##  Median :-0.8086               Median :-0.7964              
##  Mean   :-0.7110               Mean   :-0.6454              
##  3rd Qu.:-0.4813               3rd Qu.:-0.4154              
##  Max.   : 0.1966               Max.   : 0.6462              
##  FrequencyBodyGyroscopesTimedZ FrequencyBodyGyroscopeMeanFreqX
##  Min.   :-0.9867               Min.   :-0.395770              
##  1st Qu.:-0.9643               1st Qu.:-0.213363              
##  Median :-0.8224               Median :-0.115527              
##  Mean   :-0.6577               Mean   :-0.104551              
##  3rd Qu.:-0.3916               3rd Qu.: 0.002655              
##  Max.   : 0.5225               Max.   : 0.249209              
##  FrequencyBodyGyroscopeMeanFreqY FrequencyBodyGyroscopeMeanFreqZ
##  Min.   :-0.66681                Min.   :-0.50749               
##  1st Qu.:-0.29433                1st Qu.:-0.15481               
##  Median :-0.15794                Median :-0.05081               
##  Mean   :-0.16741                Mean   :-0.05718               
##  3rd Qu.:-0.04269                3rd Qu.: 0.04152               
##  Max.   : 0.27314                Max.   : 0.37707               
##  FrequencyBodyAccelerometerMagnitudeMean
##  Min.   :-0.9868                        
##  1st Qu.:-0.9560                        
##  Median :-0.6703                        
##  Mean   :-0.5365                        
##  3rd Qu.:-0.1622                        
##  Max.   : 0.5866                        
##  FrequencyBodyAccelerometerMagnitudesTimed
##  Min.   :-0.9876                          
##  1st Qu.:-0.9452                          
##  Median :-0.6513                          
##  Mean   :-0.6210                          
##  3rd Qu.:-0.3654                          
##  Max.   : 0.1787                          
##  FrequencyBodyAccelerometerMagnitudeMeanFreq
##  Min.   :-0.31234                           
##  1st Qu.:-0.01475                           
##  Median : 0.08132                           
##  Mean   : 0.07613                           
##  3rd Qu.: 0.17436                           
##  Max.   : 0.43585                           
##  FrequencyBodyAccelerometerJerkMagnitudeMean
##  Min.   :-0.9940                            
##  1st Qu.:-0.9770                            
##  Median :-0.7940                            
##  Mean   :-0.5756                            
##  3rd Qu.:-0.1872                            
##  Max.   : 0.5384                            
##  FrequencyBodyAccelerometerJerkMagnitudesTimed
##  Min.   :-0.9944                              
##  1st Qu.:-0.9752                              
##  Median :-0.8126                              
##  Mean   :-0.5992                              
##  3rd Qu.:-0.2668                              
##  Max.   : 0.3163                              
##  FrequencyBodyAccelerometerJerkMagnitudeMeanFreq
##  Min.   :-0.12521                               
##  1st Qu.: 0.04527                               
##  Median : 0.17198                               
##  Mean   : 0.16255                               
##  3rd Qu.: 0.27593                               
##  Max.   : 0.48809                               
##  FrequencyBodyGyroscopeMagnitudeMean FrequencyBodyGyroscopeMagnitudesTimed
##  Min.   :-0.9865                     Min.   :-0.9815                      
##  1st Qu.:-0.9616                     1st Qu.:-0.9488                      
##  Median :-0.7657                     Median :-0.7727                      
##  Mean   :-0.6671                     Mean   :-0.6723                      
##  3rd Qu.:-0.4087                     3rd Qu.:-0.4277                      
##  Max.   : 0.2040                     Max.   : 0.2367                      
##  FrequencyBodyGyroscopeMagnitudeMeanFreq
##  Min.   :-0.45664                       
##  1st Qu.:-0.16951                       
##  Median :-0.05352                       
##  Mean   :-0.03603                       
##  3rd Qu.: 0.08228                       
##  Max.   : 0.40952                       
##  FrequencyBodyGyroscopeJerkMagnitudeMean
##  Min.   :-0.9976                        
##  1st Qu.:-0.9813                        
##  Median :-0.8779                        
##  Mean   :-0.7564                        
##  3rd Qu.:-0.5831                        
##  Max.   : 0.1466                        
##  FrequencyBodyGyroscopeJerkMagnitudesTimed
##  Min.   :-0.9976                          
##  1st Qu.:-0.9802                          
##  Median :-0.8941                          
##  Mean   :-0.7715                          
##  3rd Qu.:-0.6081                          
##  Max.   : 0.2878                          
##  FrequencyBodyGyroscopeJerkMagnitudeMeanFreq
##  Min.   :-0.18292                           
##  1st Qu.: 0.05423                           
##  Median : 0.11156                           
##  Mean   : 0.12592                           
##  3rd Qu.: 0.20805                           
##  Max.   : 0.42630
```
 - Variables present in the dataset

```
##  [1] "Activity"                                       
##  [2] "TimeBodyAccelerometerMeanX"                     
##  [3] "TimeBodyAccelerometerMeanY"                     
##  [4] "TimeBodyAccelerometerMeanZ"                     
##  [5] "TimeBodyAccelerometersTimedX"                   
##  [6] "TimeBodyAccelerometersTimedY"                   
##  [7] "TimeBodyAccelerometersTimedZ"                   
##  [8] "TimeGraviTimeyAccelerometerMeanX"               
##  [9] "TimeGraviTimeyAccelerometerMeanY"               
## [10] "TimeGraviTimeyAccelerometerMeanZ"               
## [11] "TimeGraviTimeyAccelerometersTimedX"             
## [12] "TimeGraviTimeyAccelerometersTimedY"             
## [13] "TimeGraviTimeyAccelerometersTimedZ"             
## [14] "TimeBodyAccelerometerJerkMeanX"                 
## [15] "TimeBodyAccelerometerJerkMeanY"                 
## [16] "TimeBodyAccelerometerJerkMeanZ"                 
## [17] "TimeBodyAccelerometerJerksTimedX"               
## [18] "TimeBodyAccelerometerJerksTimedY"               
## [19] "TimeBodyAccelerometerJerksTimedZ"               
## [20] "TimeBodyGyroscopeMeanX"                         
## [21] "TimeBodyGyroscopeMeanY"                         
## [22] "TimeBodyGyroscopeMeanZ"                         
## [23] "TimeBodyGyroscopesTimedX"                       
## [24] "TimeBodyGyroscopesTimedY"                       
## [25] "TimeBodyGyroscopesTimedZ"                       
## [26] "TimeBodyGyroscopeJerkMeanX"                     
## [27] "TimeBodyGyroscopeJerkMeanY"                     
## [28] "TimeBodyGyroscopeJerkMeanZ"                     
## [29] "TimeBodyGyroscopeJerksTimedX"                   
## [30] "TimeBodyGyroscopeJerksTimedY"                   
## [31] "TimeBodyGyroscopeJerksTimedZ"                   
## [32] "TimeBodyAccelerometerMagnitudeMean"             
## [33] "TimeBodyAccelerometerMagnitudesTimed"           
## [34] "TimeGraviTimeyAccelerometerMagnitudeMean"       
## [35] "TimeGraviTimeyAccelerometerMagnitudesTimed"     
## [36] "TimeBodyAccelerometerJerkMagnitudeMean"         
## [37] "TimeBodyAccelerometerJerkMagnitudesTimed"       
## [38] "TimeBodyGyroscopeMagnitudeMean"                 
## [39] "TimeBodyGyroscopeMagnitudesTimed"               
## [40] "TimeBodyGyroscopeJerkMagnitudeMean"             
## [41] "TimeBodyGyroscopeJerkMagnitudesTimed"           
## [42] "FrequencyBodyAccelerometerMeanX"                
## [43] "FrequencyBodyAccelerometerMeanY"                
## [44] "FrequencyBodyAccelerometerMeanZ"                
## [45] "FrequencyBodyAccelerometersTimedX"              
## [46] "FrequencyBodyAccelerometersTimedY"              
## [47] "FrequencyBodyAccelerometersTimedZ"              
## [48] "FrequencyBodyAccelerometerMeanFreqX"            
## [49] "FrequencyBodyAccelerometerMeanFreqY"            
## [50] "FrequencyBodyAccelerometerMeanFreqZ"            
## [51] "FrequencyBodyAccelerometerJerkMeanX"            
## [52] "FrequencyBodyAccelerometerJerkMeanY"            
## [53] "FrequencyBodyAccelerometerJerkMeanZ"            
## [54] "FrequencyBodyAccelerometerJerksTimedX"          
## [55] "FrequencyBodyAccelerometerJerksTimedY"          
## [56] "FrequencyBodyAccelerometerJerksTimedZ"          
## [57] "FrequencyBodyAccelerometerJerkMeanFreqX"        
## [58] "FrequencyBodyAccelerometerJerkMeanFreqY"        
## [59] "FrequencyBodyAccelerometerJerkMeanFreqZ"        
## [60] "FrequencyBodyGyroscopeMeanX"                    
## [61] "FrequencyBodyGyroscopeMeanY"                    
## [62] "FrequencyBodyGyroscopeMeanZ"                    
## [63] "FrequencyBodyGyroscopesTimedX"                  
## [64] "FrequencyBodyGyroscopesTimedY"                  
## [65] "FrequencyBodyGyroscopesTimedZ"                  
## [66] "FrequencyBodyGyroscopeMeanFreqX"                
## [67] "FrequencyBodyGyroscopeMeanFreqY"                
## [68] "FrequencyBodyGyroscopeMeanFreqZ"                
## [69] "FrequencyBodyAccelerometerMagnitudeMean"        
## [70] "FrequencyBodyAccelerometerMagnitudesTimed"      
## [71] "FrequencyBodyAccelerometerMagnitudeMeanFreq"    
## [72] "FrequencyBodyAccelerometerJerkMagnitudeMean"    
## [73] "FrequencyBodyAccelerometerJerkMagnitudesTimed"  
## [74] "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq"
## [75] "FrequencyBodyGyroscopeMagnitudeMean"            
## [76] "FrequencyBodyGyroscopeMagnitudesTimed"          
## [77] "FrequencyBodyGyroscopeMagnitudeMeanFreq"        
## [78] "FrequencyBodyGyroscopeJerkMagnitudeMean"        
## [79] "FrequencyBodyGyroscopeJerkMagnitudesTimed"      
## [80] "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq"
```
###Variables
The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are the ones on the mean ans standard deviation.

Features are normalized and bounded within [-1,1].

Name and class of the variables :

```
## [1] =====================
## [1] Activity
## [1] factor
## [1] =====================
## [1] TimeBodyAccelerometerMeanX
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerMeanY
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerMeanZ
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometersTimedX
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometersTimedY
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometersTimedZ
## [1] numeric
## [1] =====================
## [1] TimeGraviTimeyAccelerometerMeanX
## [1] numeric
## [1] =====================
## [1] TimeGraviTimeyAccelerometerMeanY
## [1] numeric
## [1] =====================
## [1] TimeGraviTimeyAccelerometerMeanZ
## [1] numeric
## [1] =====================
## [1] TimeGraviTimeyAccelerometersTimedX
## [1] numeric
## [1] =====================
## [1] TimeGraviTimeyAccelerometersTimedY
## [1] numeric
## [1] =====================
## [1] TimeGraviTimeyAccelerometersTimedZ
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerJerkMeanX
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerJerkMeanY
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerJerkMeanZ
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerJerksTimedX
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerJerksTimedY
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerJerksTimedZ
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeMeanX
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeMeanY
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeMeanZ
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopesTimedX
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopesTimedY
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopesTimedZ
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeJerkMeanX
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeJerkMeanY
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeJerkMeanZ
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeJerksTimedX
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeJerksTimedY
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeJerksTimedZ
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerMagnitudeMean
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerMagnitudesTimed
## [1] numeric
## [1] =====================
## [1] TimeGraviTimeyAccelerometerMagnitudeMean
## [1] numeric
## [1] =====================
## [1] TimeGraviTimeyAccelerometerMagnitudesTimed
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerJerkMagnitudeMean
## [1] numeric
## [1] =====================
## [1] TimeBodyAccelerometerJerkMagnitudesTimed
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeMagnitudeMean
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeMagnitudesTimed
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeJerkMagnitudeMean
## [1] numeric
## [1] =====================
## [1] TimeBodyGyroscopeJerkMagnitudesTimed
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerMeanX
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerMeanY
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerMeanZ
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometersTimedX
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometersTimedY
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometersTimedZ
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerMeanFreqX
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerMeanFreqY
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerMeanFreqZ
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerkMeanX
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerkMeanY
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerkMeanZ
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerksTimedX
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerksTimedY
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerksTimedZ
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerkMeanFreqX
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerkMeanFreqY
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerkMeanFreqZ
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeMeanX
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeMeanY
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeMeanZ
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopesTimedX
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopesTimedY
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopesTimedZ
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeMeanFreqX
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeMeanFreqY
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeMeanFreqZ
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerMagnitudeMean
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerMagnitudesTimed
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerMagnitudeMeanFreq
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerkMagnitudeMean
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerkMagnitudesTimed
## [1] numeric
## [1] =====================
## [1] FrequencyBodyAccelerometerJerkMagnitudeMeanFreq
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeMagnitudeMean
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeMagnitudesTimed
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeMagnitudeMeanFreq
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeJerkMagnitudeMean
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeJerkMagnitudesTimed
## [1] numeric
## [1] =====================
## [1] FrequencyBodyGyroscopeJerkMagnitudeMeanFreq
## [1] numeric
```
