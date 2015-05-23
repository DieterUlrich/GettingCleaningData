--
title: Codebook Getting & Cleaning Data Assignment
author: Dieter Ulrich
date: 2015-05-22
---
 
## Project Description
The purpose of this project was to demonstrate the ability to collect, work with, and clean a data set. The goal was to prepare tidy data that can be used for later analysis.
 
##Study design and data processing
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

###Collection of the raw data
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
 
###Notes on the original (raw) data 
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
 
##Creating the tidy datafile
 
###Guide to create the tidy data file
1. download the data
2. store the followin tables in a directory called "GD": X_test.txt, y_test.txt, y_train.txt, X_train.txt, subject_train.txt, subject_test.txt, features.txt, activity_labels.txt
3. run the skrip run_analysis.R
 
###Cleaning of the data
See the readme.md in the same directory
 
##Description of the variables in the tinyData.txt file
Dimensions: 180 81
Summary: 
    subject                 activityName tBodyAcc.mean...X tBodyAcc.mean...Y   tBodyAcc.mean...Z tGravityAcc.mean...X
 Min.   : 1.0   LAYING            :30    Min.   :0.2216    Min.   :-0.040514   Min.   :-0.1545   Min.   :-0.5058     
 1st Qu.: 8.0   SITTING           :30    1st Qu.:0.2608    1st Qu.:-0.021529   1st Qu.:-0.1127   1st Qu.: 0.8315     
 Median :15.5   STANDING          :30    Median :0.2768    Median :-0.018218   Median :-0.1084   Median : 0.8990     
 Mean   :15.5   WALKING           :30    Mean   :0.2703    Mean   :-0.018327   Mean   :-0.1102   Mean   : 0.6964     
 3rd Qu.:23.0   WALKING_DOWNSTAIRS:30    3rd Qu.:0.2789    3rd Qu.:-0.015688   3rd Qu.:-0.1045   3rd Qu.: 0.9352     
 Max.   :30.0   WALKING_UPSTAIRS  :30    Max.   :0.2924    Max.   :-0.001308   Max.   :-0.0973   Max.   : 0.9430     
 tGravityAcc.mean...Y tGravityAcc.mean...Z tBodyAccJerk.mean...X tBodyAccJerk.mean...Y tBodyAccJerk.mean...Z
 Min.   :-0.41474     Min.   :-0.20057     Min.   :0.04269       Min.   :-0.004053     Min.   :-0.045563    
 1st Qu.:-0.34661     1st Qu.:-0.07540     1st Qu.:0.07226       1st Qu.: 0.003838     1st Qu.:-0.008072    
 Median :-0.26980     Median : 0.01913     Median :0.07492       Median : 0.010650     Median :-0.003927    
 Mean   :-0.07194     Mean   : 0.09168     Mean   :0.07533       Mean   : 0.012159     Mean   :-0.003126    
 3rd Qu.: 0.12730     3rd Qu.: 0.19873     3rd Qu.:0.08109       3rd Qu.: 0.018249     3rd Qu.: 0.007605    
 Max.   : 0.83677     Max.   : 0.64622     Max.   :0.11004       Max.   : 0.039725     Max.   : 0.020821    
 tBodyGyro.mean...X tBodyGyro.mean...Y  tBodyGyro.mean...Z tBodyGyroJerk.mean...X tBodyGyroJerk.mean...Y
 Min.   :-0.13157   Min.   :-0.166170   Min.   :0.02156    Min.   :-0.12223       Min.   :-0.05383      
 1st Qu.:-0.04547   1st Qu.:-0.090937   1st Qu.:0.06653    1st Qu.:-0.10361       1st Qu.:-0.04224      
 Median :-0.03036   Median :-0.070596   Median :0.08389    Median :-0.09735       Median :-0.04086      
 Mean   :-0.03265   Mean   :-0.073423   Mean   :0.08688    Mean   :-0.09453       Mean   :-0.04154      
 3rd Qu.:-0.02070   3rd Qu.:-0.058510   3rd Qu.:0.09717    3rd Qu.:-0.08188       3rd Qu.:-0.03916      
 Max.   : 0.07220   Max.   :-0.004823   Max.   :0.14869    Max.   :-0.05810       Max.   :-0.03609      
 tBodyGyroJerk.mean...Z tBodyAccMag.mean.. tGravityAccMag.mean.. tBodyAccJerkMag.mean.. tBodyGyroMag.mean..
 Min.   :-0.07405       Min.   :-0.98428   Min.   :-0.98428      Min.   :-0.992368      Min.   :-0.97649   
 1st Qu.:-0.05901       1st Qu.:-0.96588   1st Qu.:-0.96588      1st Qu.:-0.980489      1st Qu.:-0.94604   
 Median :-0.04938       Median :-0.56617   Median :-0.56617      Median :-0.710450      Median :-0.67059   
 Mean   :-0.05166       Mean   :-0.52937   Mean   :-0.52937      Mean   :-0.611919      Mean   :-0.59033   
 3rd Qu.:-0.04359       3rd Qu.:-0.12993   3rd Qu.:-0.12993      3rd Qu.:-0.280009      3rd Qu.:-0.21529   
 Max.   :-0.02705       Max.   : 0.08995   Max.   : 0.08995      Max.   : 0.005655      Max.   :-0.07574   
 tBodyGyroJerkMag.mean.. fBodyAcc.mean...X fBodyAcc.mean...Y fBodyAcc.mean...Z fBodyAcc.meanFreq...X
 Min.   :-0.9950         Min.   :-0.9952   Min.   :-0.9806   Min.   :-0.9853   Min.   :-0.46125     
 1st Qu.:-0.9866         1st Qu.:-0.9796   1st Qu.:-0.9573   1st Qu.:-0.9625   1st Qu.:-0.28289     
 Median :-0.8106         Median :-0.6717   Median :-0.5290   Median :-0.6936   Median :-0.15249     
 Mean   :-0.7389         Mean   :-0.5886   Mean   :-0.4693   Mean   :-0.6525   Mean   :-0.15941     
 3rd Qu.:-0.5479         3rd Qu.:-0.2689   3rd Qu.:-0.0077   3rd Qu.:-0.4045   3rd Qu.:-0.04951     
 Max.   :-0.2955         Max.   : 0.1128   Max.   : 0.2783   Max.   :-0.1313   Max.   : 0.10852     
 fBodyAcc.meanFreq...Y fBodyAcc.meanFreq...Z fBodyAccJerk.mean...X fBodyAccJerk.mean...Y fBodyAccJerk.mean...Z
 Min.   :-0.160697     Min.   :-0.520115     Min.   :-0.9946       Min.   :-0.98542      Min.   :-0.9908      
 1st Qu.:-0.006616     1st Qu.: 0.007719     1st Qu.:-0.9810       1st Qu.:-0.97085      1st Qu.:-0.9798      
 Median : 0.069583     Median : 0.082146     Median :-0.7185       Median :-0.66795      Median :-0.8168      
 Mean   : 0.064411     Mean   : 0.052693     Mean   :-0.5993       Mean   :-0.55523      Mean   :-0.7392      
 3rd Qu.: 0.150194     3rd Qu.: 0.224613     3rd Qu.:-0.2615       3rd Qu.:-0.13594      3rd Qu.:-0.5210      
 Max.   : 0.260577     Max.   : 0.407502     Max.   : 0.1381       Max.   : 0.09621      Max.   :-0.2715      
 fBodyAccJerk.meanFreq...X fBodyAccJerk.meanFreq...Y fBodyAccJerk.meanFreq...Z fBodyGyro.mean...X fBodyGyro.mean...Y
 Min.   :-0.377023         Min.   :-0.50950          Min.   :-0.55110          Min.   :-0.9873    Min.   :-0.9890   
 1st Qu.:-0.216043         1st Qu.:-0.35602          1st Qu.:-0.27442          1st Qu.:-0.9702    1st Qu.:-0.9758   
 Median : 0.011441         Median :-0.25842          Median :-0.07806          Median :-0.6714    Median :-0.7875   
 Mean   : 0.005122         Mean   :-0.18700          Mean   :-0.12087          Mean   :-0.6451    Mean   :-0.6862   
 3rd Qu.: 0.215732         3rd Qu.: 0.02451          3rd Qu.: 0.05050          3rd Qu.:-0.3524    3rd Qu.:-0.4868   
 Max.   : 0.331449         Max.   : 0.12617          Max.   : 0.19652          Max.   :-0.1291    Max.   :-0.0557   
 fBodyGyro.mean...Z fBodyGyro.meanFreq...X fBodyGyro.meanFreq...Y fBodyGyro.meanFreq...Z fBodyAccMag.mean..
 Min.   :-0.98077   Min.   :-0.29711       Min.   :-0.47357       Min.   :-0.2291201     Min.   :-0.9854   
 1st Qu.:-0.95981   1st Qu.:-0.12466       1st Qu.:-0.17116       1st Qu.:-0.0756762     1st Qu.:-0.9613   
 Median :-0.68145   Median :-0.05966       Median :-0.07865       Median : 0.0005001     Median :-0.6071   
 Mean   :-0.62031   Mean   :-0.04611       Mean   :-0.10806       Mean   :-0.0006774     Mean   :-0.5351   
 3rd Qu.:-0.30287   3rd Qu.: 0.03376       3rd Qu.:-0.02970       3rd Qu.: 0.0910073     3rd Qu.:-0.1450   
 Max.   :-0.03187   Max.   : 0.18915       Max.   : 0.08255       Max.   : 0.1496744     Max.   : 0.2934   
 fBodyAccMag.meanFreq.. fBodyBodyAccJerkMag.mean.. fBodyBodyAccJerkMag.meanFreq.. fBodyBodyGyroMag.mean..
 Min.   :-0.09774       Min.   :-0.9925            Min.   :-0.11716               Min.   :-0.9846        
 1st Qu.: 0.04396       1st Qu.:-0.9771            1st Qu.: 0.07649               1st Qu.:-0.9618        
 Median : 0.11634       Median :-0.6880            Median : 0.16866               Median :-0.7160        
 Mean   : 0.13268       Mean   :-0.5561            Mean   : 0.17309               Mean   :-0.6648        
 3rd Qu.: 0.23666       3rd Qu.:-0.1691            3rd Qu.: 0.28680               3rd Qu.:-0.3324        
 Max.   : 0.39321       Max.   : 0.2222            Max.   : 0.42222               Max.   :-0.1857        
 fBodyBodyGyroMag.meanFreq.. fBodyBodyGyroJerkMag.mean.. fBodyBodyGyroJerkMag.meanFreq.. tBodyAcc.std...X  
 Min.   :-0.309822           Min.   :-0.9948             Min.   :-0.05125                Min.   :-0.99576  
 1st Qu.:-0.115526           1st Qu.:-0.9842             1st Qu.: 0.06544                1st Qu.:-0.97723  
 Median :-0.028725           Median :-0.8296             Median : 0.12048                Median :-0.67585  
 Mean   :-0.001992           Mean   :-0.7506             Mean   : 0.12860                Mean   :-0.59965  
 3rd Qu.: 0.103971           3rd Qu.:-0.5832             3rd Qu.: 0.19000                3rd Qu.:-0.30568  
 Max.   : 0.349614           Max.   :-0.2820             Max.   : 0.33450                Max.   : 0.04637  
 tBodyAcc.std...Y   tBodyAcc.std...Z   tGravityAcc.std...X tGravityAcc.std...Y tGravityAcc.std...Z tBodyAccJerk.std...X
 Min.   :-0.98104   Min.   :-0.98473   Min.   :-0.9938     Min.   :-0.9882     Min.   :-0.9843     Min.   :-0.9946     
 1st Qu.:-0.95070   1st Qu.:-0.94974   1st Qu.:-0.9800     1st Qu.:-0.9721     1st Qu.:-0.9544     1st Qu.:-0.9811     
 Median :-0.45746   Median :-0.62566   Median :-0.9654     Median :-0.9548     Median :-0.9387     Median :-0.7077     
 Mean   :-0.44723   Mean   :-0.59191   Mean   :-0.9618     Mean   :-0.9500     Mean   :-0.9305     Mean   :-0.5890     
 3rd Qu.:-0.00232   3rd Qu.:-0.26003   3rd Qu.:-0.9501     3rd Qu.:-0.9355     3rd Qu.:-0.8999     3rd Qu.:-0.2687     
 Max.   : 0.26288   Max.   :-0.01948   Max.   :-0.8968     Max.   :-0.9039     Max.   :-0.8524     Max.   : 0.1472     
 tBodyAccJerk.std...Y tBodyAccJerk.std...Z tBodyGyro.std...X tBodyGyro.std...Y   tBodyGyro.std...Z tBodyGyroJerk.std...X
 Min.   :-0.9856      Min.   :-0.9923      Min.   :-0.9890   Min.   :-0.987734   Min.   :-0.9806   Min.   :-0.9939      
 1st Qu.:-0.9711      1st Qu.:-0.9828      1st Qu.:-0.9745   1st Qu.:-0.971442   1st Qu.:-0.9598   1st Qu.:-0.9802      
 Median :-0.6512      Median :-0.8317      Median :-0.7227   Median :-0.755266   Median :-0.7077   Median :-0.7667      
 Mean   :-0.5324      Mean   :-0.7604      Mean   :-0.7061   Mean   :-0.665447   Mean   :-0.6569   Mean   :-0.6861      
 3rd Qu.:-0.1016      3rd Qu.:-0.5717      3rd Qu.:-0.4580   3rd Qu.:-0.464720   3rd Qu.:-0.4423   3rd Qu.:-0.3895      
 Max.   : 0.1268      Max.   :-0.3401      Max.   :-0.2617   Max.   : 0.004105   Max.   :-0.1247   Max.   :-0.2074      
 tBodyGyroJerk.std...Y tBodyGyroJerk.std...Z tBodyAccMag.std.. tGravityAccMag.std.. tBodyAccJerkMag.std..
 Min.   :-0.9951       Min.   :-0.9921       Min.   :-0.9819   Min.   :-0.9819      Min.   :-0.9931      
 1st Qu.:-0.9867       1st Qu.:-0.9832       1st Qu.:-0.9531   1st Qu.:-0.9531      1st Qu.:-0.9767      
 Median :-0.8718       Median :-0.7821       Median :-0.6088   Median :-0.6088      Median :-0.7036      
 Mean   :-0.7689       Mean   :-0.7051       Mean   :-0.5545   Mean   :-0.5545      Mean   :-0.5638      
 3rd Qu.:-0.6341       3rd Qu.:-0.4355       3rd Qu.:-0.2197   3rd Qu.:-0.2197      3rd Qu.:-0.1399      
 Max.   :-0.2388       Max.   :-0.2183       Max.   : 0.2156   Max.   : 0.2156      Max.   : 0.2296      
 tBodyGyroMag.std.. tBodyGyroJerkMag.std.. fBodyAcc.std...X   fBodyAcc.std...Y   fBodyAcc.std...Z   fBodyAccJerk.std...X
 Min.   :-0.9787    Min.   :-0.9947        Min.   :-0.99603   Min.   :-0.98170   Min.   :-0.98521   Min.   :-0.99507    
 1st Qu.:-0.9539    1st Qu.:-0.9831        1st Qu.:-0.97641   1st Qu.:-0.95007   1st Qu.:-0.94643   1st Qu.:-0.98301    
 Median :-0.6903    Median :-0.8269        Median :-0.69104   Median :-0.50142   Median :-0.63406   Median :-0.72351    
 Mean   :-0.6307    Mean   :-0.7469        Mean   :-0.60549   Mean   :-0.47255   Mean   :-0.59488   Mean   :-0.61609    
 3rd Qu.:-0.2748    3rd Qu.:-0.5674        3rd Qu.:-0.31913   3rd Qu.:-0.00804   3rd Qu.:-0.29793   3rd Qu.:-0.29660    
 Max.   :-0.1486    Max.   :-0.3065        Max.   : 0.02433   Max.   : 0.17197   Max.   : 0.08596   Max.   : 0.04996    
 fBodyAccJerk.std...Y fBodyAccJerk.std...Z fBodyGyro.std...X fBodyGyro.std...Y fBodyGyro.std...Z fBodyAccMag.std.. 
 Min.   :-0.9870      Min.   :-0.9923      Min.   :-0.9896   Min.   :-0.9871   Min.   :-0.9823   Min.   :-0.98231  
 1st Qu.:-0.9735      1st Qu.:-0.9846      1st Qu.:-0.9760   1st Qu.:-0.9710   1st Qu.:-0.9635   1st Qu.:-0.95558  
 Median :-0.6570      Median :-0.8496      Median :-0.7487   Median :-0.7460   Median :-0.7441   Median :-0.68770  
 Mean   :-0.5401      Mean   :-0.7803      Mean   :-0.7270   Mean   :-0.6591   Mean   :-0.7030   Mean   :-0.63731  
 3rd Qu.:-0.1346      3rd Qu.:-0.6135      3rd Qu.:-0.4954   3rd Qu.:-0.4587   3rd Qu.:-0.5459   3rd Qu.:-0.39803  
 Max.   : 0.1067      Max.   :-0.4017      Max.   :-0.3086   Max.   : 0.1515   Max.   :-0.2111   Max.   :-0.02148  
 fBodyBodyAccJerkMag.std.. fBodyBodyGyroMag.std.. fBodyBodyGyroJerkMag.std..
 Min.   :-0.9925           Min.   :-0.9785        Min.   :-0.9947           
 1st Qu.:-0.9752           1st Qu.:-0.9552        1st Qu.:-0.9825           
 Median :-0.7274           Median :-0.7381        Median :-0.8363           
 Mean   :-0.5777           Mean   :-0.6746        Mean   :-0.7610           
 3rd Qu.:-0.1591           3rd Qu.:-0.3984        3rd Qu.:-0.5581           
 Max.   : 0.2275           Max.   :-0.1830        Max.   :-0.3437      

Variables:
 [1] "subject"                         "activityName"                    "tBodyAcc.mean...X"              
 [4] "tBodyAcc.mean...Y"               "tBodyAcc.mean...Z"               "tGravityAcc.mean...X"           
 [7] "tGravityAcc.mean...Y"            "tGravityAcc.mean...Z"            "tBodyAccJerk.mean...X"          
[10] "tBodyAccJerk.mean...Y"           "tBodyAccJerk.mean...Z"           "tBodyGyro.mean...X"             
[13] "tBodyGyro.mean...Y"              "tBodyGyro.mean...Z"              "tBodyGyroJerk.mean...X"         
[16] "tBodyGyroJerk.mean...Y"          "tBodyGyroJerk.mean...Z"          "tBodyAccMag.mean.."             
[19] "tGravityAccMag.mean.."           "tBodyAccJerkMag.mean.."          "tBodyGyroMag.mean.."            
[22] "tBodyGyroJerkMag.mean.."         "fBodyAcc.mean...X"               "fBodyAcc.mean...Y"              
[25] "fBodyAcc.mean...Z"               "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"          
[28] "fBodyAcc.meanFreq...Z"           "fBodyAccJerk.mean...X"           "fBodyAccJerk.mean...Y"          
[31] "fBodyAccJerk.mean...Z"           "fBodyAccJerk.meanFreq...X"       "fBodyAccJerk.meanFreq...Y"      
[34] "fBodyAccJerk.meanFreq...Z"       "fBodyGyro.mean...X"              "fBodyGyro.mean...Y"             
[37] "fBodyGyro.mean...Z"              "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"         
[40] "fBodyGyro.meanFreq...Z"          "fBodyAccMag.mean.."              "fBodyAccMag.meanFreq.."         
[43] "fBodyBodyAccJerkMag.mean.."      "fBodyBodyAccJerkMag.meanFreq.."  "fBodyBodyGyroMag.mean.."        
[46] "fBodyBodyGyroMag.meanFreq.."     "fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.meanFreq.."
[49] "tBodyAcc.std...X"                "tBodyAcc.std...Y"                "tBodyAcc.std...Z"               
[52] "tGravityAcc.std...X"             "tGravityAcc.std...Y"             "tGravityAcc.std...Z"            
[55] "tBodyAccJerk.std...X"            "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"           
[58] "tBodyGyro.std...X"               "tBodyGyro.std...Y"               "tBodyGyro.std...Z"              
[61] "tBodyGyroJerk.std...X"           "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"          
[64] "tBodyAccMag.std.."               "tGravityAccMag.std.."            "tBodyAccJerkMag.std.."          
[67] "tBodyGyroMag.std.."              "tBodyGyroJerkMag.std.."          "fBodyAcc.std...X"               
[70] "fBodyAcc.std...Y"                "fBodyAcc.std...Z"                "fBodyAccJerk.std...X"           
[73] "fBodyAccJerk.std...Y"            "fBodyAccJerk.std...Z"            "fBodyGyro.std...X"              
[76] "fBodyGyro.std...Y"               "fBodyGyro.std...Z"               "fBodyAccMag.std.."              
[79] "fBodyBodyAccJerkMag.std.."       "fBodyBodyGyroMag.std.."          "fBodyBodyGyroJerkMag.std.."

 
###Variable details
'data.frame':   180 obs. of  81 variables:
 $ subject                        : int  1 1 1 1 1 1 2 2 2 2 ...
 $ activityName                   : Factor w/ 6 levels "LAYING","SITTING",..: 1 2 3 4 5 6 1 2 3 4 ...
 $ tBodyAcc.mean...X              : num  0.222 0.261 0.279 0.277 0.289 ...
 $ tBodyAcc.mean...Y              : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
 $ tBodyAcc.mean...Z              : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
 $ tGravityAcc.mean...X           : num  -0.249 0.832 0.943 0.935 0.932 ...
 $ tGravityAcc.mean...Y           : num  0.706 0.204 -0.273 -0.282 -0.267 ...
 $ tGravityAcc.mean...Z           : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
 $ tBodyAccJerk.mean...X          : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
 $ tBodyAccJerk.mean...Y          : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
 $ tBodyAccJerk.mean...Z          : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
 $ tBodyGyro.mean...X             : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
 $ tBodyGyro.mean...Y             : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
 $ tBodyGyro.mean...Z             : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
 $ tBodyGyroJerk.mean...X         : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
 $ tBodyGyroJerk.mean...Y         : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
 $ tBodyGyroJerk.mean...Z         : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
 $ tBodyAccMag.mean..             : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ tGravityAccMag.mean..          : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ tBodyAccJerkMag.mean..         : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
 $ tBodyGyroMag.mean..            : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
 $ tBodyGyroJerkMag.mean..        : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
 $ fBodyAcc.mean...X              : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
 $ fBodyAcc.mean...Y              : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
 $ fBodyAcc.mean...Z              : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
 $ fBodyAcc.meanFreq...X          : num  -0.1588 -0.0495 0.0865 -0.2075 -0.3074 ...
 $ fBodyAcc.meanFreq...Y          : num  0.0975 0.0759 0.1175 0.1131 0.0632 ...
 $ fBodyAcc.meanFreq...Z          : num  0.0894 0.2388 0.2449 0.0497 0.2943 ...
 $ fBodyAccJerk.mean...X          : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
 $ fBodyAccJerk.mean...Y          : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
 $ fBodyAccJerk.mean...Z          : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
 $ fBodyAccJerk.meanFreq...X      : num  0.132 0.257 0.314 -0.209 -0.253 ...
 $ fBodyAccJerk.meanFreq...Y      : num  0.0245 0.0475 0.0392 -0.3862 -0.3376 ...
 $ fBodyAccJerk.meanFreq...Z      : num  0.02439 0.09239 0.13858 -0.18553 0.00937 ...
 $ fBodyGyro.mean...X             : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
 $ fBodyGyro.mean...Y             : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
 $ fBodyGyro.mean...Z             : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
 $ fBodyGyro.meanFreq...X         : num  -0.00355 0.18915 -0.12029 0.01478 -0.10045 ...
 $ fBodyGyro.meanFreq...Y         : num  -0.0915 0.0631 -0.0447 -0.0658 0.0826 ...
 $ fBodyGyro.meanFreq...Z         : num  0.010458 -0.029784 0.100608 0.000773 -0.075676 ...
 $ fBodyAccMag.mean..             : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
 $ fBodyAccMag.meanFreq..         : num  0.0864 0.2367 0.2846 0.1906 0.1192 ...
 $ fBodyBodyAccJerkMag.mean..     : num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
 $ fBodyBodyAccJerkMag.meanFreq.. : num  0.2664 0.3519 0.4222 0.0938 0.0765 ...
 $ fBodyBodyGyroMag.mean..        : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
 $ fBodyBodyGyroMag.meanFreq..    : num  -0.139775 -0.000262 -0.028606 0.268844 0.349614 ...
 $ fBodyBodyGyroJerkMag.mean..    : num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
 $ fBodyBodyGyroJerkMag.meanFreq..: num  0.176 0.185 0.334 0.191 0.19 ...
 $ tBodyAcc.std...X               : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
 $ tBodyAcc.std...Y               : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
 $ tBodyAcc.std...Z               : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
 $ tGravityAcc.std...X            : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
 $ tGravityAcc.std...Y            : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
 $ tGravityAcc.std...Z            : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
 $ tBodyAccJerk.std...X           : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
 $ tBodyAccJerk.std...Y           : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
 $ tBodyAccJerk.std...Z           : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
 $ tBodyGyro.std...X              : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
 $ tBodyGyro.std...Y              : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
 $ tBodyGyro.std...Z              : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
 $ tBodyGyroJerk.std...X          : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
 $ tBodyGyroJerk.std...Y          : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
 $ tBodyGyroJerk.std...Z          : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
 $ tBodyAccMag.std..              : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ tGravityAccMag.std..           : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ tBodyAccJerkMag.std..          : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
 $ tBodyGyroMag.std..             : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
 $ tBodyGyroJerkMag.std..         : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
 $ fBodyAcc.std...X               : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
 $ fBodyAcc.std...Y               : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
 $ fBodyAcc.std...Z               : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
 $ fBodyAccJerk.std...X           : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
 $ fBodyAccJerk.std...Y           : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
 $ fBodyAccJerk.std...Z           : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
 $ fBodyGyro.std...X              : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
 $ fBodyGyro.std...Y              : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
 $ fBodyGyro.std...Z              : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
 $ fBodyAccMag.std..              : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
 $ fBodyBodyAccJerkMag.std..      : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
 $ fBodyBodyGyroMag.std..         : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
 $ fBodyBodyGyroJerkMag.std..     : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
 
 
##Annex
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
