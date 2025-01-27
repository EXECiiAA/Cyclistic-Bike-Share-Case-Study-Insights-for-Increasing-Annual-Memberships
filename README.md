# Cyclistic Bike-Share Analysis: Case Study

## Table of Contents
1. [Introduction](#introduction)
2. [Business Task](#business-task)
3. [Data Sources](#data-sources)
4. [Data Cleaning and Manipulation](#data-cleaning-and-manipulation)
5. [Analysis](#analysis)
6. [Key Findings](#key-findings)
7. [Visualizations](#visualizations)
8. [Recommendations](#recommendations)
9. [Next Steps](#next-steps)

---

## Introduction
Cyclistic is a bike-share program based in Chicago, featuring over 5,800 bicycles and 600 docking stations. The program includes traditional bikes, electric bikes, and accessibility-friendly options such as hand tricycles and cargo bikes.

The program offers three pricing plans:
- Single-ride passes (casual riders)
- Full-day passes (casual riders)
- Annual memberships (Cyclistic members)

Annual members have been identified as significantly more profitable than casual riders. To increase profitability, Cyclistic aims to convert casual riders into annual members.

---

## Business Task
The primary goal is to identify behavioral differences between casual riders and annual members using Cyclistic's bike-share data. These insights will inform marketing strategies to increase the number of annual members.

### Analysis Questions
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

---

## Data Sources
The analysis uses Cyclistic’s publicly available historical bike trip data for the year 2023. The datasets were sourced from [Divvy Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html) under a public license agreement. The data does not contain personally identifiable information.

Key columns in the dataset:
- `ride_id`: Unique trip identifier
- `rideable_type`: Type of bike (classic, electric, docked)
- `started_at` and `ended_at`: Trip start and end timestamps
- `start_station_name` and `end_station_name`: Names of start and end stations
- `start_lat`, `start_lng`, `end_lat`, `end_lng`: GPS coordinates for stations
- `member_casual`: Rider type (casual or annual member)

---

## Data Cleaning and Manipulation
Data cleaning was performed using **SQL** and **R** to ensure accuracy and consistency.

### Steps Taken:
1. **Combined 12 monthly datasets** into a single dataset for streamlined analysis.
2. Removed duplicates and filtered out invalid entries (e.g., negative trip durations).
3. Created new columns:
   - `ride_length`: Trip duration calculated as the difference between `ended_at` and `started_at`.
   - `day_of_week`: Extracted from the `started_at` timestamp to analyze usage trends by weekday.
4. Addressed null values:
   - Rows with null station names or coordinates were excluded when necessary for station-based analysis.

---

## Analysis
Key metrics and comparisons between casual riders and members were calculated:
- **Rider distribution**: Proportion of casual vs. annual riders.
- **Trip duration**: Average ride lengths.
- **Monthly and hourly trends**: Usage patterns across time.
- **Bike type preference**: Popularity of bike types.
- **Station usage**: Variability in start and end locations.

---

## Key Findings
1. **Rider Distribution**:
   - Casual riders: 64% of trips
   - Annual members: 36% of trips

2. **Trip Duration**:
   - Casual riders’ trips averaged 27.74 minutes, nearly twice as long as members’ 12.03 minutes.

3. **Seasonal Trends**:
   - Both groups had peak activity from March to August, with declines in winter months.

4. **Hourly Trends**:
   - Members showed peaks during commute hours (8 AM and 5 PM), while casual riders showed steady activity throughout the day, peaking in the afternoon.

5. **Bike Type Preference**:
   - Both groups preferred electric bikes, while docked bikes were the least used.

6. **Station Usage**:
   - Casual riders used 1,549 stations, compared to 1,455 stations for members, indicating more variability in start and end locations.

---

## Visualizations
### 1. Station Count by Rider Type
![Station Count by Rider Type](https://github.com/EXECiiAA/png-files/blob/main/Station%20Count%20by%20Rider%20Type.png)
- Casual riders utilized more stations, indicating greater variability in their trips.

### 2. Average Ride Duration
![Average Ride Duration](https://github.com/EXECiiAA/png-files/blob/main/Average%20Riding%20Time%20by%20Rider%20Type.png)
- Casual riders' trips lasted nearly twice as long as members' trips.

### 3. Monthly Usage Trends
![Monthly Usage Trends](https://github.com/EXECiiAA/png-files/blob/main/Monthly%20Rider%20Counts%20by%20Membership%20Type.png)
- Usage peaked in spring and summer for both groups.

### 4. Hourly Usage Trends
![Hourly Usage Trends](https://github.com/EXECiiAA/png-files/blob/main/Hourly%20Rider%20Counts%20by%20Membership%20Type.png)
- Members showed clear commuting patterns, while casual riders were active throughout the day.

### 5. Rider Type Distribution
![Rider Distribution](https://github.com/EXECiiAA/png-files/blob/main/Member%20Vs%20Casual%20Rider%20Count.png)
- Casual riders accounted for a larger proportion of trips.

### 6. Rideable Type Usage by Membership
![Rideable Type Usage](https://github.com/EXECiiAA/png-files/blob/main/Rideable%20type%20Usage%20by%20Membership%20and%20Rider%20Count.png)
- Both groups preferred electric bikes, while docked bikes were used only by casual riders.

### 7. Trip Start Locations
![Trip Start Locations](https://github.com/EXECiiAA/png-files/blob/main/Trip%20Start%20Locations%20Members%20Vs.%20Casual%20Riders.png)
- Casual riders often started at recreational locations, while members began near residential or commercial hubs.

---

## Recommendations
1. **Target Marketing During Peak Seasons**:
   - Focus marketing efforts in spring and summer to convert casual riders during their most active period.

2. **Introduce Flexible Membership Options**:
   - Offer seasonal or weekend-only memberships to cater to casual riders’ preferences.

3. **Leverage Recreational Locations**:
   - Promote memberships at popular recreational locations frequented by casual riders.

4. **Enhance Membership Value**:
   - Provide incentives for longer rides or frequent usage to attract casual riders to memberships.

---

## Next Steps
1. **Develop Targeted Campaigns**:
   - Use the insights from this analysis to create data-driven marketing strategies.
2. **Conduct Surveys**:
   - Collect feedback from casual riders to identify barriers to membership adoption.
3. **Run A/B Tests**:
   - Test promotional offers to determine the most effective approach for converting casual riders.

---

## About This Project
This case study is part of the **Google Data Analytics Professional Certificate**. The goal was to apply the data analysis process to a real-world scenario, showcasing skills in data cleaning, analysis, visualization, and strategic recommendation.

For more details, view the [original datasets](https://divvy-tripdata.s3.amazonaws.com/index.html) or explore the project repository.
