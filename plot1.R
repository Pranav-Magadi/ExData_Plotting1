## Working directory should be set to the folder containing household_power_consumption.txt

## The values for skip and nrows in read.table were calculated interactively using the grep and readLines function.

hpcdata<-read.table("household_power_consumption.txt",sep=";" ,skip = 66637,nrows = 2881, stringsAsFactors = FALSE,na.strings = "?",col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
png(filename = "plot1.png",width=480,height=480,units = "px")
hist(hpcdata$Global_active_power,col="red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
dev.off()