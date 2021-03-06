setwd("C:/Users/danielsw/OneDrive/Data Science Specialization/Exploratory Data Analisys/Week 1/ExData_Plotting1")
source("ReadData.R")
Data <- ReadData("household_power_consumption.txt")
png(filename = "plot3.png", width = 480, height = 480)
plot(Data$DateTime, Data$Sub_metering_1, type = "l", ylab = "Energy Submetering", xlab = "")
lines(Data$DateTime, Data$Sub_metering_2, type = "l", col = "red")
lines(Data$DateTime, Data$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
dev.off()