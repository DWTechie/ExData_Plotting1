ReadData <- function(Filename) {
setwd("C:/Users/danielsw/OneDrive/Data Science Specialization/ExData_Plotting1")
consumption <- read.table(Filename, sep = ";", na.strings = "?", header = TRUE)
#Converts Date column into date class'
consumption$Date <- as.Date(consumption$Date, "%d/%m/%Y")
#subset data
consumption <- subset(consumption, Date == "2007-02-01" | Date == "2007-02-02")

#Merges Date and Time columns into a column
consumption$DateTime <- paste(consumption$Date, consumption$Time, sep = " ")
consumption$DateTime <- as.POSIXct(consumption$DateTime)

#Converts to numeric
consumption$Global_active_power <- as.numeric(as.character(consumption$Global_active_power))
consumption$Sub_metering_1 <- as.numeric(as.character(consumption$Sub_metering_1))
consumption$Sub_metering_2 <- as.numeric(as.character(consumption$Sub_metering_2))
consumption$Sub_metering_3 <- as.numeric(as.character(consumption$Sub_metering_3))
consumption$Voltage <- as.numeric(as.character(consumption$Voltage))
consumption$Global_reactive_power <- as.numeric(as.character(consumption$Global_reactive_power))
return(consumption)
}