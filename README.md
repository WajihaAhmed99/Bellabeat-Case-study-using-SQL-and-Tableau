# Bellabeat-Case-study-using-SQL-and-Tableau
This Case study is part of Google Data Analyst Professional Certificate.
#                                      **About Project**
**Bellabeat, a high-tech company that manufactures health-focused smart products wants to analyse the usage of one of their products in order to gain insight into how people are already using their smart devices.Then, using this information, she would like high-level recommendations for how these trends can inform Bellabeat marketing strategy.** 
#### According to Google ,their are six phases for analysis
* Ask
* Prepare
* Process
* Analyze
* Share
*  Act
so we are doing our analysis according to these six phases.

# **Phase 1: ASK**
## Key Objectives :

## 1. Identify the business task
Business task is to identifying trends in smart device usage and how these trends apply to customers of bellabeat to improve markiting stratagy.
## 2. Consider key stakeholder
The main stakeholders here are Urška Sršen, Bellabeat’s co-founder and Chief Creative Officer; Sando Mur, Mathematician and Bellabeat’s cofounder; And the rest of the Bellabeat marketing analytics team.

# **Phase 2: Prepare**
## Key Objectives:

## 1.Determine the credibility of the data:
The data is public data from FitBit Fitness Tracker Data. It's a dataset from thirty fitbit users that includes minute-level output for physical activity, heart rate, and sleep monitoring. It's a good database segmented in several tables with different aspects of the data of the device with lots of details about the user behaviour.

## 2.Data Used 
The data source used for this case study is FitBit Fitness Tracker Data. This dataset was downloaded from Kaggle where it was uploaded by Möbius.

## 3.Accessibility & Usage of Data 
The dataset was published by Möbius to Kaggle.com under the CC0: Public Domain Creative Common License – waiving all rights to the work and allowing for the dataset to be copies, modified, distributed and performed without asking for permission.

## 4.Data Summary ¶
This datset is about thirty eligible Fitbit users consented to the submission of personal tracker data, including minute-level output for physical activity, heart rate, and sleep monitoring." Additionally, "Variation between output represents use of different types of Fitbit trackers and individual tracking behaviors / preferences.

## 5.Data Limitations & Integrity 
The FitBit Fitness Tracker Data was collected in 2016 making the datasets outdated for current trend analysis. Additionally, while the data initially states a time range of 03-12-2016 to 05-12-2016, after data verification, the data collected was only during a 31 day period (04-12-2016 to 05-12-2016). Since the data only included instances over a 31 day period, the timeframe for a more insightful analysis is realitively small.

# Phase 3: Process
## Key Objectives :
## 1.Dataset Use 
For the casestudy analysis the following datasets were chosen:
* Daily_Activity_Merged
* Daily_Sleep_Merged
* Hourly_Steps_Merged
* Hourly_Intensity_Merged
* Hourly_Calories_Merged
* Heart_Rate_Merged
* Weight_Log_Merged
* Minute_METs_Narrow
​
## 2.Cleaning & Transforming Data 
For this case study SQL is use for cleaning and transforming process.Firstly I upload Dataset into SQL and then start cleaning process.
​
#### Merage & Cleaning 
###### **1.By merging following datset:**
* Hourly_Steps_Merged
* Hourly_Intensity_Merged
* Hourly_Calories_Merged
​
we make a single dataset representing hourly dataset of calories,intensities and steps.We use **CAST** function to change data type of **activitydate** table and extract **HOUR** and  **WEEKDAYS** by using **DATEPART** fuction which is helpful for representation of houly and weekly data.
​
###### **2.By merging following datset:**
* Heart_Rate_Merged
* Minute_METs_Narrow

we make a single dataset by combining heart_rate_merged and minute_METs Narrow that will show us relationship of heart rate and METs in analysis.
​
###### **3.By merging following datset:**
* Daily_Activity_Merged
* Daily_Sleep_Merged
​
we combine daily_activity_merged and daily_sleep_merged to show the relationship of steps with calories and sleep in our analysis.we use **CAST** function to change data type of different objects and **DATETYPE** function to extract **weekdays** and **MONTH** from activity_date as shown in figure.
​
###### **4.Other Datasets:**
* Weight_Log_Merged
* Daily_Sleep_Merged
​
we use weight_log_merged  to show the relationship of weight with steps and daily_sleep_merged to show relationship of sleep times  and time in bed.
​
![Untitled design (4)](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/c24f1483-558d-4c6d-97ea-fadd1c9d4825)

## Phase 3: Analyze
In the analyze phase we use following queries to get the **number of user tracking** daily_actitities, heart_rate,sleep and weight ,**AVERAGE**,**MAXIMUM** and **MINIMUM** values of these daatsets.

![analyssis](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/3eceecd9-ff7a-437e-9e0d-f4260e738885)

We get the following result along with other results 
* user_tracking_daily_activities = 33
* user_tracking_heart_rate = 14
* user_tracking_sleep = 24
* user_tracking_weight = 8
which shows that 42% user are tracking daily_activities(steps,calories),18% are tracking their heart_rate,30% user are tracking their sleep and10% user are tracking their weight.

![view analysis](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/2bf6bc8b-45b1-46e9-9ed1-cba1e2baf658)

## Phase 4: Share
In the share phase of analysis we use **Tabluae** for **Data Visualization**.
#### Relationship of steps with calories,sleep,heart rate and weight 
##### 1.Steps/Calories
We compare steps with calories on different weekdays ,as shown in figure darkar the color means more calories are use and bigger the siza of cells mean more steps are taken .Users are taking more steps and calories on **Saturday** and less steps and calories on **Sunday**.So steps and calories have positive relationship.

![steps and calories](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/a601b222-eef4-42b4-a876-da5dbba345ae)

##### 2.Steps /Heart rate 
We compare steps with heart rate on different weekdays ,as shown in figure darkar the color means increase in heart rate and bigger the siza of cells mean more steps are taken. Users are taking more steps and having more average rate  on **Saturday** and less steps  on **Sunday** but  average heart rate is less on **Wednesday**.

![steps and heart rate](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/1262de00-93e0-40fc-98ce-aa2b703c2ebc)


##### 3.Steps /sleep
We compare steps with sleep on different weekdays ,as shown in figure darkar the color means more sleep time  and bigher the siza of cells mean more steps are taken .Users are taking less steps and more sleep on **Sunday** and more steps on **Saturday**  and lesss sleep on **Thursday**.

![steps and sleep](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/bcc7f4bc-79e4-4ffe-9fa4-1cca8bfd31ed)


##### 4.Steps / Weight
We compare steps with weight on different weekdays ,as shown in figure darkar the color means more weight is lifted  and bigger the siza of cells mean more steps are taken .Users are taking more steps  **Saturday** and less steps  on **Sunday** but lifting same amount of weight on all weekdays.

![steps and weight](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/62843bcc-1a37-4423-8f8c-818a29f1bbd4)


#### User Participation on Different Weekdays
#### 1.User Participation of  tracking daily_activities in different Weekdays
Mostly user track their daily activites on **Saturday** and **Sunday** and showing  less participation on **Monday**.

![weekdays daily activity](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/b9dddb71-5987-4a76-91d6-fd0f6114d103)

#### 2.User Participation of tracking heart_rates in different Weekdays
Mostly user track their heart rate on **Monday** and **Sunday** and showing same  participation on **Other Weekdays**.

![weekdays heart rate](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/34bfe519-7e88-485b-b266-4a2aeca3e5a9)


#### 3.User Participation of tracking sleep timming in different Weekdays
Mostly user track their sleep timmings on **Saturday** and **Friday** and showing  less participation on **Monday**.

![weekdays sleep](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/7f3ebde4-5161-4a2c-8420-25eeb3ec3715)

#### 4.User Participation of tracking weight in different Weekdays
Mostly user track their weight on **Sunday** and showing  less participation on **Saturday**.

![weekdays weight](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/00a4c5ae-9cb2-43c8-b982-9c6430252819)

## Other Data Factors
#### 1.Hourly Data representation
In this visualization we represent data of calories,intensites and steps taken by different hour of day.users are taking more calories,steps and intensities between 6PM AND 7 PM and less between 12AM TO 5AM.

![hour hourly](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/bb83a5c5-faa9-4d4a-9ada-5c16376c8b39)


#### 2.Heart Rate and METs
Heart Rate and METs are showing positive relatioship.

![heart mets](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/9d54ab64-e896-43bd-9efa-d20a2c92e6f5)


#### 3.Sleep timming / On Bed time 
Their is just slightly difference in total sleep time and total time in bed so we say that users did not take more time on grabing sleep or they dont have sleep issues.

![sleep](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/42e66ed4-6508-46be-90b8-5453cd52c4e3)

#### 4.Distance Analysis
User are taking more light active distance ,medium moderate active distance and less senotary active distance on their distance  and they are more active on saturday and tuesday according to their distance analysis.

![distance analysis](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/796cc961-c210-458b-8e25-68a21ec74663)

#### Minute Analysis of Distance

![minute analysis](https://github.com/WajihaAhmed99/Bellabeat-Case-study-using-SQL-and-Tableau/assets/132120179/526bc47f-e91b-44c3-84c5-572892c2d2d8)

## Tableau Dashboard
This is tableau dashboard view of all analysis.

https://public.tableau.com/app/profile/wajiha.ahmed/viz/BellabeatAnalysis_16840799790610/Dashboard1

## Results:
*  42% user are tracking daily_activities(steps,calories),18% are tracking their heart_rate,30% user are tracking their sleep and 10% user are tracking their weight.
* Users are taking more steps on saturday thats why more calories are taken  and increase in average heart rate.users are taking less steps and calories on sunday and having more sleep time on sunday.So we might consider that saturday is most active day and sunday is most lazy day of week according to data of  steps, calories,sleep,heart rate and weight .
* Users traking more participation on tracking of different activities on **Sunday**.
* Users are taking  more light active distance rather then senotary or moderate active distance.So we might say that users are doing running rather then jogging.
## Recommendations:
Bellabeat's mission is to empower women by providing them with the data to discover themselves.
* In order for us to respond to our business task and help Bellabeat on their mission, based on our results, I would advice to use own tracking data for further analysis. Datasets used have a small sample and can be biased. 
That being said, after our analysis we have found different trends that may help our online campaign and improve Bellabeat app:
* We should introduce **notification system** which tells about what are the required level of activites you need to complete. The App could recommend daily steps targets based on the user’s profile, lifestyle, and personal goals, and send reminders when the user is up/behind the targets. Like perfect sleep hours are 6 to 8 hours per day ,in these notification tells about how many hours you sleep and what are the require hours.According to your weight and exercise you are doing, how  amount of calories you need, to mantain your balance life and same things like that.
* We notice that their are less amount of users that are tracking their daily acivities ,sleep,weight and heart data they might don't have much more knowledge about healthy and balance life so we should introduce a **knowledge secssion** which tells about benifits of balance and how your achive it step by steps.
* Their might be some people that don't take notification serisouly so we should introduce a **reward system** which give them a reward when user reach out specific level to put users on balance track .
* We should  introduce  a daily, monthly and yearly **list of users** that are attaing a perfect and balance activites.These lists should seen by all users using app. By doing this users get encourage to attain daily activities.  


# **Thank you for Reading.**
