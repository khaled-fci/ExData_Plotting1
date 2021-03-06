data <- read.csv("household_power_consumption.txt", sep=";", colClasses = "character")
data2 <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
png(file="plot1.png",width=480, height=480)
hist(as.numeric(data2$Global_active_power), main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()