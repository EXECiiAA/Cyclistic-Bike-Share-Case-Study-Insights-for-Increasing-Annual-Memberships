SELECT rideable_type, ROUND(AVG(DATE_DIFF(ended_at, started_at, MINUTE)),2) AS average_time_on_vehicle
FROM `tripdata-2023-d1.trip_data_2023.2023_combined_data`
GROUP BY rideable_type
