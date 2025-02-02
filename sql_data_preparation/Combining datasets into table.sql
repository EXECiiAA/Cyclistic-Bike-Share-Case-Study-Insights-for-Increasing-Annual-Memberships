# Dropping table if it already preexisted
DROP TABLE IF EXISTS `tripdata-2023-d1.trip_data_2023.2023_combined_data`;

#Created new table to house all the combined data of every month in the year 2023
CREATE TABLE `tripdata-2023-d1.trip_data_2023.2023_combined_data` AS
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202301`
UNION ALL
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202302`
UNION ALL
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202303`
UNION ALL
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202304`
UNION ALL
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202305`
UNION ALL
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202306`
UNION ALL
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202307`
UNION ALL
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202308`
UNION ALL
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202309`
UNION ALL
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202310`
UNION ALL
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202311`
UNION ALL
SELECT * FROM `tripdata-2023-d1.trip_data_2023.202312`;

#Counting total rows of new table to ensure all datasets were combined successfully
SELECT COUNT(*)
FROM `tripdata-2023-d1.trip_data_2023.2023_combined_data`