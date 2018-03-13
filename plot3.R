library("data.table")

setwd("D:/GelTam/OneDrive - Diageo/Learning/Coursera_Data Science/Projects/Course 4/Assigment 1")

#Read data
consumptionDB <- read.table("household_power_consumption.txt", header = TRUE, 
                            sep = ";", na.strings = "?")

#Format date
consumptionDB$Date <- as.Date(consumptionDB$Date, format = "%d/%m/%Y")

# Filter Dates for 2007-02-01 and 2007-02-03
consumptionDB <- subset(consumptionDB, Date >= "2007-02-01" & Date < "2007-02-03")

png("plot3.png", width=480, height=480)

# Plot 3
plot(consumptionDB$Date, consumptionDB$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(consumptionDB$Date, consumptionDB$Sub_metering_2,col="red")
lines(consumptionDB$Date, consumptionDB$Sub_metering_3,col="blue")

legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))

dev.off()
