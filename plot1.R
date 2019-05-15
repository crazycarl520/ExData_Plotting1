## Load table
t <- read.csv("~/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
View(t)

## Format date to Type Date
t$Date <- as.Date(t$Date, "%d/%m/%Y")

## Filter data set from Feb. 1, 2007 to Feb. 2, 2007
t <- subset(t,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## Remove incomplete observation
t <- t[complete.cases(t),]

## Combine Date and Time column
dateTime <- paste(t$Date, t$Time)

## Name the vector
dateTime <- setNames(dateTime, "DateTime")


## Remove Date and Time column
t <- t[ ,!(names(t) %in% c("Date","Time"))]

## Remove Date and Time column
t <- t[ ,!(names(t) %in% c("Date","Time"))]

## Add DateTime column
t <- cbind(dateTime, t)

## Format dateTime Column
t$dateTime <- as.POSIXct(dateTime)

## Create first plot

 hist(t$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
 
 ## Copy first plot
  dev.copy(png,"plot1.png", width=480, height=480)
  
 ## Exit first plot
 dev.off()