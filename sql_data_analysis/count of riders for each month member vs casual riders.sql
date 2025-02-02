SELECT 
  EXTRACT(MONTH FROM started_at) AS month,
  COUNT(*) AS count_of_riders,
  member_casual
FROM `tripdata-2023-d1.trip_data_2023.2023_combined_data`
GROUP BY month, member_casual
ORDER BY month;
