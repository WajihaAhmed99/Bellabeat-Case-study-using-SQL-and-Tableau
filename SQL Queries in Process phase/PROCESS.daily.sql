-- process.daily_datset --
SELECT  
       dbo.daily_Activity.Id,
       CAST(dbo.daily_Activity.ActivityDate AS DATE) AS activitydate,
	   DATEPART(Month, dbo.daily_Activity.ActivityDate) AS activitymonth,
	   DATEPART(WEEKDAY, dbo.daily_Activity.ActivityDate) AS activityday,
       dbo.daily_Activity.TotalSteps,
       CAST(dbo.daily_Activity.TotalDistance AS FLOAT) AS TotalDistance,
       CAST(dbo.daily_Activity.TrackerDistance AS FLOAT) AS TrackerDistance,
       --dbo.daily_Activity.LoggedActivitiesDistance
       CAST(dbo.daily_Activity.TrackerDistance AS FLOAT) AS TrackerDistance,
       CAST(dbo.daily_Activity.ModeratelyActiveDistance AS FLOAT) AS ModeratelyActiveDistance,
       CAST(dbo.daily_Activity.LightActiveDistance AS FLOAT) AS LightActiveDistance,
       CAST(dbo.daily_Activity.SedentaryActiveDistance AS FLOAT) AS SedentaryActiveDistance,
       CAST(dbo.daily_Activity.VeryActiveMinutes AS FLOAT) AS VeryActiveMinutes,
       CAST(dbo.daily_Activity. FairlyActiveMinutes AS FLOAT) AS FairlyActiveMinutes,
       CAST(dbo.daily_Activity.LightlyActiveMinutes AS FLOAT) AS LightlyActiveMinutes,
       CAST(dbo.daily_Activity.SedentaryMinutes AS FLOAT) AS SedentaryMinutes,
       dbo.daily_Activity.Calories,
	   dbo.daily_sleep.TotalMinutesAsleep
  FROM 
  dbo.daily_Activity
  JOIN dbo.daily_sleep
  ON dbo.daily_Activity.Id = dbo.daily_sleep.Id AND 
  dbo.daily_Activity.ActivityDate =  dbo.daily_sleep.SleepDay