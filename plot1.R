library("data.table")

setwd("D:/GelTam/OneDrive - Diageo/Learning/Coursera_Data Science/Projects/Course 4/Assigment 1")

#Read data
consumptionDB <- read.table("household_power_consumption.txt", header = TRUE, 
                            sep = ";", na.strings = "?")

#Format date
consumptionDB$Date <- as.Date(consumptionDB$Date, format = "%d/%m/%Y")

# Filter date (2007 Feb 1-2)
consumptionDB <- subset(consumptionDB, Date >= "2007-02-01" & Date <= "2007-02-02")

#Plot data
png("plot1.png", width=480, height=480)

## Plot 1
hist(consumptionDB$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.off()

