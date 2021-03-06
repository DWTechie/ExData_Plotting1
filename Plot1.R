setwd("C:/Users/danielsw/OneDrive/Data Science Specialization/ExData_Plotting1")
source("ReadData.R")
Data <- ReadData("household_power_consumption.txt")
png(filename = "plot1.png", width = 480, height = 480)
hist(Data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()