## Create second plot
plot(t$Global_active_power~t$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

## Copy second plot
dev.copy(png,"plot2.png", width=480, height=480)

## Exit second plot
dev.off()
