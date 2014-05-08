#This is the code for plot 1
#This is part of the coursera course Exploratory Data Analysis.

#The data should be downloaded from the Course website and be copied
# into this repository before running the code.
#The data itself is not included in this repository due to the size

#Reading and cleaning the data
rawData <- data.frame(read.table("household_power_consumption.txt",sep=';',header=TRUE,stringsAsFactors = FALSE))
rawDatapart <- rawData[rawData$Date=="1/2/2007" | rawData$Date=="2/2/2007",]
rawDatapart$DateTime <- strptime(paste0(rawDatapart$Date,"-",rawDatapart$Time),"%d/%m/%Y-%H:%M:%S")

#Constructing the plot and checking the validity
hist(as.numeric(rawDatapart$Global_active_power),col="red",
     main="Global Active Power",xlab="Global Active Power (kilowatts)")

#Create the png file named plot1.png
png(filename = "plot1.png",bg="transparent") # Open PNG device; create 'plot1.png' in my working directory
#Create plot and send to the file
#Running code as above to store constructed plot into the file
hist(as.numeric(rawDatapart$Global_active_power),col="red",
     main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off() #Close the PNG file device

#'plot1.png' has now been constructed in your working directory
