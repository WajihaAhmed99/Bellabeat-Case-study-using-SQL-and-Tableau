-- heart.rate_METs_cleansed --

SELECT 
dbo.minuteMETsNarrow.Id,
dbo.minuteMETsNarrow.ActivityMinute,
dbo.minuteMETsNarrow.METs,
dbo.heartrate_seconds.Value
FROM dbo.minuteMETsNarrow
JOIN dbo.heartrate_seconds
ON dbo.minuteMETsNarrow.Id = dbo.heartrate_seconds.Id AND 
dbo.minuteMETsNarrow.ActivityMinute = dbo.heartrate_seconds.Time