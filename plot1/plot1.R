# Reading, Naming and Subsetting Power Consumption Data

datafile <- "C://Users/prana/Desktop/R/household_power_consumption.txt"
power <- read.table(datafile,skip = 1,sep = ";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")  #Providing proper variable headings
subpower <- subset(power,power$Date== "1/2/2007" | power$Date=="2/2/2007")  #Subsetting Specific Dates

# Calling the Basic Plot Function

hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

# Annotating the Graph

title(main = "Global Active Power")

# Copying the Plot in PNG File

dev.copy(png,file = "plot1.png")
dev.off()
