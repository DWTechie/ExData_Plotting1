setwd("C:/Users/danielsw/OneDrive/Data Science Specialization/Exploratory Data Analisys/Week 1/ExData_Plotting1")
source("ReadData.R")
Data <- ReadData("household_power_consumption.txt")
png(filename = "plot4.png", width = 480, height = 480)
#Set plot are to be 2 rows by 2 columns
par(mfrow = c(2, 2)) 
#plot 1
plot(Data$DateTime, Data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
#plot 2
plot(Data$DateTime, Data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage") 
#plot 3
plot(Data$DateTime, Data$Sub_metering_1, type = "l", xlab = "datetime", ylab = "Energy Sub Metering") 
lines(Data$DateTime, Data$Sub_metering_2, type = "l", col = "red")
lines(Data$DateTime, Data$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 2.5, col = c("black", "red", "blue"), bty = "n")
#plot 4
plot(Data$DateTime, Data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_Reactive_Power")
dev.off()