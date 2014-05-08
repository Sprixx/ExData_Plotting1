#This is the code for plot 4
#This is part of the coursera course Exploratory Data Analysis.

#The data should be downloaded from the Course website and be copied
# into this repository before running the code.
#The data itself is not included in this repository due to the size

#Reading and cleaning the data
rawData <- data.frame(read.table("household_power_consumption.txt",sep=';',header=TRUE,stringsAsFactors = FALSE))
rawDatapart <- rawData[rawData$Date=="1/2/2007" | rawData$Date=="2/2/2007",]
rawDatapart$DateTime <- strptime(paste0(rawDatapart$Date,"-",rawDatapart$Time),"%d/%m/%Y-%H:%M:%S")

#Constructing the plot and checking the validity
par(mfrow = c(2, 2))

#Topleft plot
plot(rawDatapart$DateTime,as.numeric(rawDatapart$Global_active_power),type="l",
     ylab="Global Active Power (kilowatts)",xlab="")

#Topright plot
plot(rawDatapart$DateTime,as.numeric(rawDatapart$Voltage),type="l",
     ylab="Voltage",xlab="datetime")

#Bottemleft plot
plot(rawDatapart$DateTime,as.numeric(rawDatapart$Sub_metering_1),type="l",
     ylab="Energy sub metering",xlab="")
lines(rawDatapart$DateTime,as.numeric(rawDatapart$Sub_metering_2),col="red")
lines(rawDatapart$DateTime,as.numeric(rawDatapart$Sub_metering_3),col="blue")
legend("topright", lwd = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       bty = "n")

#Bottemright plot
plot(rawDatapart$DateTime,as.numeric(rawDatapart$Global_reactive_power),type="l",
     ylab="Global_reactive_power",xlab="datetime")




#Create the png file named plot4.png
png(filename = "plot4.png",bg="transparent") # Open PNG device; create 'plot4.png' in my working directory
#Create plot and send to the file
#Running code as above to store constructed plot into the file
par(mfrow = c(2, 2))

#Topleft plot
plot(rawDatapart$DateTime,as.numeric(rawDatapart$Global_active_power),type="l",
     ylab="Global Active Power (kilowatts)",xlab="")

#Topright plot
plot(rawDatapart$DateTime,as.numeric(rawDatapart$Voltage),type="l",
     ylab="Voltage",xlab="datetime")

#Bottemleft plot
plot(rawDatapart$DateTime,as.numeric(rawDatapart$Sub_metering_1),type="l",
     ylab="Energy sub metering",xlab="")
lines(rawDatapart$DateTime,as.numeric(rawDatapart$Sub_metering_2),col="red")
lines(rawDatapart$DateTime,as.numeric(rawDatapart$Sub_metering_3),col="blue")
legend("topright", lwd = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       bty = "n")

#Bottemright plot
plot(rawDatapart$DateTime,as.numeric(rawDatapart$Global_reactive_power),type="l",
     ylab="Global_reactive_power",xlab="datetime")

dev.off() #Close the PNG file device

#'plot4.png' has now been constructed in your working directory
