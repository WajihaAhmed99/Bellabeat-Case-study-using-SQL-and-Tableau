-- hourly_datest_cleansed --

SELECT
dbo.hourly_Calories .Id,
dbo.hourly_Calories .ActivityHour,
CAST(dbo.hourly_Calories.ActivityHour AS DATETIME) AS activitydate,
DATEPART(HOUR,dbo.hourly_Calories.ActivityHour) AS activityHour,
DATEPART(WEEKDAY,dbo.hourly_Calories.ActivityHour) AS activityDay,
dbo.hourly_Calories .Calories,
dbo.hourly_Steps .StepTotal,
dbo.hourly_Intensities.TotalIntensity
FROM dbo.hourly_Calories 
JOIN dbo.hourly_Steps 
ON dbo.hourly_Calories.Id = dbo.hourly_Steps.Id AND 
dbo.hourly_Calories.ActivityHour = dbo.hourly_Steps.ActivityHour
JOIN dbo.hourly_Intensities
ON dbo.hourly_Intensities.Id = dbo.hourly_Calories.Id AND 
dbo.hourly_Intensities.ActivityHour = dbo.hourly_Calories.ActivityHour