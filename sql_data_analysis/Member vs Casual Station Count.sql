SELECT 
  member_casual, 
  COUNT(DISTINCT start_station_name) AS station_count
FROM `tripdata-2023-d1.trip_data_2023.2023_combined_data`
GROUP BY member_casual
ORDER BY member_casual;

