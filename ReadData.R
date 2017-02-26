ReadData <- function(Filename) {
        consumption <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
#Converts Date column into date class'
consumption$Time <- strptime(paste(consumption$Date, consumption$Time, sep=" "), format = "%d/%m/%Y %H:%M:%S")
        consumption$Date <- as.Date(consumption$Date, format = "%d/%m/%Y")
#subset data
consumption <- subset(consumption, Date == as.Date("2007-02-01") | Date == as.Date("2/2/2007"))
#Converts to numeric
consumption$Global_active_power <- as.numeric(as.character(consumption$Global_active_power))
consumption$Sub_metering_1 <- as.numeric(as.character(consumption$Sub_metering_1))
consumption$Sub_metering_2 <- as.numeric(as.character(consumption$Sub_metering_2))
consumption$Sub_metering_3 <- as.numeric(as.character(consumption$Sub_metering_3))
consumption$Voltage <- as.numeric(as.character(consumption$Voltage))
consumption$Global_reactive_power <- as.numeric(as.character(consumption$Global_reactive_power))
return(consumption)
}