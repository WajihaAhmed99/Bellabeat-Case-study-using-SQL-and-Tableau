--sleep_dataset_process--
SELECT Id,
      CAST(SleepDay AS DATE) AS activitydate,
      --TotalSleepRecords,
      TotalMinutesAsleep/60 AS totalhoursleep,
      TotalTimeInBed/60 AS totalhoursinbed
  FROM 
  dbo.daily_sleep