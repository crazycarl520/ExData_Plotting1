## Create first plot

 hist(t$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
 
 ## Copy first plot
  dev.copy(png,"plot1.png", width=480, height=480)
  
 ## Exit first plot
 dev.off()