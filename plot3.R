# Plot 3
png(filename = "plot3.png", width = 480, height = 480, units = "px", res = NA)# remove this line and use the dev.off() if you want the plot to appear when you run the script
with(dataS, {
    plot(Sub_metering_1 ~ Datetime, type = "l", 
    ylab = "Global Active Power (Kilowatts)", xlab = "Date time(Days)")
    lines(Sub_metering_2 ~ Datetime, col = 'Green')
    lines(Sub_metering_3 ~ Datetime, col = 'Red')
})
legend("topright", col = c("black", "green", "red"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))