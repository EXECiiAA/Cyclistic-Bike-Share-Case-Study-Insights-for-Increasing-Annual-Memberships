SELECT 
  member_casual,
  ROUND(AVG(DATE_DIFF(ended_at, started_at, MINUTE)),2) AS average_riding_time_in_minutes

FROM 
  `tripdata-2023-d1.trip_data_2023.2023_combined_data`
GROUP BY 
  member_casual
  