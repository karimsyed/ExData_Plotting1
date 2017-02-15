path<-"./Coursera/Exploratory Data Analysis/household_power_consumption.txt"
mydata<-read.table(path, header = T, sep = ";")

fData<-filter(mydata, Date=="1/2/2007"|Date=="2/2/2007")
gap<-as.numeric(fData$Global_active_power)
dateTime<-paste(fData$Date, fData$Time, sep = " ")
dateTime<-strptime(dateTime, format = "%d/%m/%Y %H:%M:%S")
subMeter1<-as.numeric(fData$Sub_metering_1)
subMeter2<-as.numeric(fData$Sub_metering_2)
subMeter3<-as.numeric(fData$Sub_metering_3)

png(filename = "./Coursera/Exploratory Data Analysis/plot3.png", width = 480, height = 480)
plot(dateTime, subMeter1, type="l", xlab="", ylab = "Energy Sub Metering")
lines(dateTime, subMeter2, col="red")
lines(dateTime, subMeter3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()