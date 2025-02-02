SELECT 
  member_casual,
  COUNT(member_casual) AS rider_count
FROM 
  `tripdata-2023-d1.trip_data_2023.2023_combined_data`
GROUP BY 
  member_casual;

