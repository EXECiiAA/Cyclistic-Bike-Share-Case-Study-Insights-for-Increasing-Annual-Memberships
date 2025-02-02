SELECT 
  EXTRACT(HOUR FROM started_at) AS hour_of_day,
  COUNT(*) AS count_of_riders,
  member_casual
FROM `tripdata-2023-d1.trip_data_2023.2023_combined_data`
GROUP BY hour_of_day, member_casual
ORDER BY hour_of_day;
