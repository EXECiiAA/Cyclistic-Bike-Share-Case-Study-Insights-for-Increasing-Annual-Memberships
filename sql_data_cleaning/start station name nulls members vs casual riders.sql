SELECT 
  member_casual
  start_station_name,
  COUNT(*) AS count_of_null_start_station_name
FROM `tripdata-2023-d1.trip_data_2023.2023_combined_data`
WHERE start_station_name IS NULL
GROUP BY member_casual;

