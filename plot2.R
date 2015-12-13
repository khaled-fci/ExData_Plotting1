data <- read.csv("household_power_consumption.txt", sep=";", colClasses = "character")
data2 <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
png(file="plot2.png",width=480, height=480)
datetime <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
gap <- as.numeric(data2$Global_active_power)
plot(x=datetime, y=gap, type="l", xlab="", ylab="Global Active Power (kilowatts")
dev.off()