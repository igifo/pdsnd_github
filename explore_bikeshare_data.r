# Read bikeshare raw data
ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

# Load required ggplot2 package
library(ggplot2)


# QUESTION 1

# Get relevant data subset
has_gender = subset(ny, Gender != "")

ggplot(has_gender, aes(x = Gender, y = Trip.Duration / 60)) +
    geom_boxplot() +
    scale_y_continuous(breaks = seq(0, 60, 5)) +
    coord_cartesian(ylim = c(0,45)) + # zoom in to visualize the relevant range
    ggtitle('New York Trip Durations by Gender') +
    labs(x = "Gender", y = "Trip Durations [minutes]")

# Corroborate with summary statistics
by(has_gender$Trip.Duration / 60, has_gender$Gender, summary)
by(has_gender$Trip.Duration / 60, has_gender$Gender, function(x) {sum(x >= 30) / length(x)})


# QUESTION 2

# Add column with hour of day of each bike rental
chi$hour_day = format(as.POSIXct(chi$Start.Time, "%Y-%m-%d %H:%M:%S"), format = "%H")

# Plot
ggplot(chi, aes(x = hour_day)) +
    geom_bar(aes(y = (..count..)/sum(..count..))) +
    scale_y_continuous(breaks = seq(0, .15, .01)) +
    ggtitle('Relative share of Chicago trips by hour of day') +
    labs(x = "Hour of day", y = "Share of total trips")



# QUESTION 3

# Get relevant data subset
has_year = subset(ny, !is.na(Birth.Year))

# Plot
ggplot(has_year, aes(x = Birth.Year, y = Trip.Duration / 60)) +
    geom_jitter(alpha = 1/25) +
    coord_cartesian(xlim = c(1938,2000), ylim = c(0,60)) +
    scale_x_continuous(breaks = seq(1940,2000,5)) +
    scale_y_continuous(breaks = seq(0,60,5)) +
    ggtitle('Trips by birth year and duration') +
    labs(x = "Birth Year", y = "Trip Durations [minutes]")
