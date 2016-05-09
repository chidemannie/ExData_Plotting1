# Plot 4
png(filename = "plot4.png", width = 480, height = 480, units = "px", res = NA) # remove this line if you want the plot to appear when executed
par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0)
with(dataS, {
     plot(Global_active_power ~ Datetime, type = "l", 
     ylab = "Global Active Power (kW)", xlab = "Date Time (days)")
     plot(Voltage ~ Datetime, type = "l", ylab = "Voltage (Volts)", xlab = "Date Time (days)")
     plot(Sub_metering_1 ~ Datetime, type = "l", ylab = "Energy Sub Metering",
          xlab = "Date Time (days)")
     lines(Sub_metering_2 ~ Datetime, col = 'Green')
     lines(Sub_metering_3 ~ Datetime, col = 'Red')
     legend("topright", col = c("black", "green", "red"), lty = 1, lwd = 2, 
             bty = "n",
             legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
     plot(Global_reactive_power ~ Datetime, type = "l", 
          ylab = "Global Reactive Power", xlab = "Date time (days)")
})