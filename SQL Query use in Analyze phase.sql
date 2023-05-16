--analysis_about_data--

--daily_activity--
SELECT
COUNT(DISTINCT Id) AS user_tracking_activity,
AVG(Calories) AS average_calories,
AVG(TotalSteps) AS average_steps
FROM dbo.daily_Activity

--heart_rate--
SELECT
COUNT(DISTINCT Id) AS user_tracking_heart_rate,
AVG(Value) AS average_heart_rate,
MIN(Value) AS minimum_heart_rate,
MAX(Value) AS maximum_heart_rate
FROM dbo.heartrate_seconds

--sleep--
SELECT
COUNT(DISTINCT Id) AS user_tracking_sleep,
AVG(TotalMinutesAsleep)/60 AS average_hour_sleep,
MIN(TotalMinutesAsleep)/60 AS minimum_hour_sleep,
MAX(TotalMinutesAsleep)/60 AS maximum_hour_sleep,
AVG(TotalTimeInBed)/60 AS average_hour_in_bed
FROM dbo.daily_sleep

--weight--
SELECT
COUNT(DISTINCT Id) AS user_tracking_weight,
AVG(WeightKg) AS average_weight,
MIN(WeightKg) AS minimum_weight,
MAX(WeightKg) AS maximum_weight

FROM dbo.weightLogInfo

