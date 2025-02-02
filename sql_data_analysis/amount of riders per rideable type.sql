SELECT rideable_type, COUNT(member_casual) AS amount_of_riders
FROM `tripdata-2023-d1.trip_data_2023.2023_combined_data`
GROUP BY rideable_type