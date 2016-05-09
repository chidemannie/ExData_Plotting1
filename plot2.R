# The full dataset
data1 <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')
data1$Date <- as.Date(data1$Date, format = "%d/%m/%Y")

# Subset of data
dataS <- subset(data1, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data1)

# Converting dates
datetime <- paste(as.Date(dataS$Date), dataS$Time)
dataS$Datetime <- as.POSIXct(datetime)

# Plot 2
png(filename = "plot2.png", width = 480, height = 480, units = "px", res = NA) # remove this line if you want the plot to appear when executed
plot(dataS$Global_active_power ~ dataS$Datetime, type = "l", ylab = "Global Active Power (Kilowatts)", xlab = "Time (days of the week")
