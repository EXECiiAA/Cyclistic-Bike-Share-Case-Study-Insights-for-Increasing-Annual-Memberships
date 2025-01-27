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
5. Current datasets lack unique IDs for individual riders, which limits the ability to analyze returning customers or track long-term usage trends. A suggestion for improvement is to assign **custom unique IDs** to each rider in future datasets. This would allow for better customer segmentation and analysis of customer retention.

---

## Analysis
The data was analyzed to uncover differences in how casual riders and annual members use Cyclistic bikes. Key areas of analysis included:

1. **Rider Distribution**:
   - Casual riders made up 64% of total trips, compared to 36% for members, reflecting a significant pool of casual users to target for conversion to memberships.

2. **Trip Duration**:
   - Casual riders took longer trips (27.74 minutes on average), suggesting leisure and recreational usage. Members averaged 12.03 minutes per trip, aligned with commuting patterns.

3. **Monthly Trends**:
   - Peak ridership occurred from March to August, with a steady decline during winter months. Casual riders showed a sharper decline in activity during winter, indicating their seasonal dependence.

4. **Hourly Trends**:
   - Members displayed distinct peaks during commuting hours (8 AM and 5 PM). Casual riders were more active midday and on weekends, highlighting leisure-driven behavior.

5. **Bike Type Preferences**:
   - Both groups heavily favored electric bikes, while docked bikes were used sparingly and only by casual riders.

6. **Station Usage**:
   - Casual riders accessed more unique stations (1,549) than members (1,455), reflecting their geographically dispersed trips.

7. **Trip Start Locations**:
   - Casual riders frequently began trips at recreational hotspots (parks, beaches, museums), while members started near residential and business districts.

---

## Key Findings
1. Casual riders dominate ridership but take fewer, longer trips, while members use bikes more frequently for short, functional commutes.
2. Electric bikes are the most popular option for both groups, highlighting their efficiency and appeal.
3. Casual riders are highly dependent on favorable weather conditions and leisure-oriented locations.
4. Members exhibit consistent commuting patterns, primarily starting and ending trips at stations near home or work.
5. Casual riders represent a significant market for seasonal or flexible memberships, given their behavior and preferences.
6. Members display predictable commuting patterns, with morning and evening peaks aligning with traditional work hours.
7. The lack of unique IDs for riders in the dataset limits deeper analysis, such as tracking returning customers or evaluating customer lifetime value. Adding unique IDs would improve future analysis capabilities.

---

## Visualizations
### 1. Rider Distribution
![Member Vs Casual Rider Count](https://github.com/EXECiiAA/png-files/blob/main/Member%20Vs%20Casual%20Rider%20Count.png)
- Casual riders accounted for 64% of total trips, offering a significant opportunity for conversion to memberships.

### 2. Average Ride Duration by Rider Type
![Average Riding Time by Rider Type](https://github.com/EXECiiAA/png-files/blob/main/Average%20Riding%20Time%20by%20Rider%20Type.png)
- Casual riders’ trips averaged nearly double the duration of members’ trips, reflecting their leisure-based usage.

### 3. Monthly Rider Counts by Membership Type
![Monthly Rider Counts by Membership Type](https://github.com/EXECiiAA/png-files/blob/main/Monthly%20Rider%20Counts%20by%20Membership%20Type.png)
- Both groups showed peak ridership during spring and summer, with steep declines in winter.

### 4. Hourly Rider Counts by Membership Type
![Hourly Rider Counts by Membership Type](https://github.com/EXECiiAA/png-files/blob/main/Hourly%20Rider%20Counts%20by%20Membership%20Type.png)
- Members were most active during commuting hours, while casual riders peaked midday and on weekends.

### 5. Station Count by Rider Type
![Station Count by Rider Type](https://github.com/EXECiiAA/png-files/blob/main/Station%20Count%20by%20Rider%20Type.png)
- Casual riders used more unique stations, reflecting their exploratory and dispersed travel behavior.

### 6. Rideable Type Usage by Membership and Rider Count
![Rideable Type Usage by Membership and Rider Count](https://github.com/EXECiiAA/png-files/blob/main/Rideable%20type%20Usage%20by%20Membership%20and%20Rider%20Count.png)
- Electric bikes dominated usage, followed by classic bikes. Docked bikes had minimal adoption.

### 7. Trip Start Locations by Longitude
![Trip Start Locations Members Vs. Casual Riders](https://github.com/EXECiiAA/png-files/blob/main/Trip%20Start%20Locations%20Members%20Vs.%20Casual%20Riders.png)
- Casual riders began trips near recreational areas, while members preferred residential or commercial starting points.

---

## Recommendations
1. **Target Peak Seasons**:
   - Focus marketing efforts during spring and summer, when casual ridership is highest.
2. **Introduce Seasonal Memberships**:
   - Offer flexible memberships tailored to casual riders' preferences, such as weekend or summer-only plans.
3. **Promote Electric Bikes**:
   - Highlight the popularity of electric bikes in campaigns to attract both casual and potential members.
4. **Leverage Recreational Stations**:
   - Deploy targeted promotions and discounts at popular recreational starting locations.
5. **Improve Docked Bike Appeal**:
   - Investigate reasons for low docked bike usage and consider adjustments to make them more attractive.
6. **Implement Unique IDs for Riders**:
   - Assign unique identifiers to each rider in future datasets to enable analysis of returning customers, customer lifetime value, and rider loyalty trends. This would improve data quality and facilitate more personalized marketing strategies.

---

## Next Steps
1. **Conduct Surveys**:
   - Gather insights directly from casual riders to understand barriers to membership adoption.
2. **Run A/B Testing**:
   - Test the effectiveness of promotional offers like seasonal memberships or discounts on electric bike rentals.
3. **Enhance Marketing at Hotspot Locations**:
   - Focus advertising efforts on recreational stations frequented by casual riders.
4. **Analyze Membership Retention**:
   - Evaluate strategies to retain new members and convert occasional users into long-term members.
5. **Enhance Data Collection Practices**:
   - Work with Cyclistic’s data collection team to implement custom unique IDs for riders in future datasets. This would provide deeper insights into customer retention and allow for better-targeted marketing campaigns for returning customers.

---

## About This Project
This case study is part of the **Google Data Analytics Professional Certificate**. The goal was to apply the data analysis process to a real-world scenario, showcasing skills in data cleaning, analysis, visualization, and strategic recommendation.

For more details, view the [original datasets](https://divvy-tripdata.s3.amazonaws.com/index.html) or explore the project repository.
