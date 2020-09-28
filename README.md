### Date created
September 28, 2020

### Project Title
Exploratory data analysis of bikeshare data

### Description
The project uses R data visualizations to answer three questions about bikeshare data from Washington, Chicago, and New York City:
1. How are durations of trips of up to 1 hour distributed for men and women in New York? Are there significant differences?
2. How is bike usage distributed across hour of day in Chicago? Are there busy / quiet times?
3. Are New York trip numbers and durations different across user age groups?

### Analysis Results
1. Around 90% of rows (subscribers) have a gender value. Only those rows were taken into account. Typical female subscribers' trips are about 1.5 minutes longer than male users' trips (median). Among the top quartile of users, female users' trips are even 2.5 minutes longer. Female users have more trips with very high durations: around 7.5% of female trips are 30 minutes or longer, versus 5% for men.


2. There are two distinct peaks in bikeshare usage that match the hours of day normally referred to as "rush hours". One from 7-9am and one from 4-6pm. In sum, they make up for more than 35% of all Chicago trips. This indicates that bikes are used heavily for commuting - more so in the afternoon (~21% of trips) than in the morning (~15% of trips).


3. As one might have expected, younger people tend to do more and longer trips, with users born between 1980 and 1995 doing most trips across all durations. There are pratically no trips for users born after 2000, which could indicate a minimum age restriction. Only very few users are born before 1950.


### Files used
* explore_bikeshare_data.r (code)
* new_york_city.csv (data)
* chicago.csv (data)
* washington.csv (data)

### Credits
* [DataCamp Course: Intermediate Data Visualization with ggplot2](https://learn.datacamp.com/courses/data-visualization-with-ggplot2-2)
* [Udacity Nanodegree: Data Analysis with R](https://www.udacity.com/course/data-analysis-with-r--ud651)
