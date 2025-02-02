SELECT count(ride_id) 
FROM `tripdata-2023-d1.trip_data_2023.2023_combined_data`
GROUP BY ride_id
HAVING COUNT(ride_id) > 1