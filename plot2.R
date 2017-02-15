path<-"./Coursera/Exploratory Data Analysis/household_power_consumption.txt"
mydata<-read.table(path, header = T, sep = ";")

fData<-filter(mydata, Date=="1/2/2007"|Date=="2/2/2007")
gap<-as.numeric(fData$Global_active_power)
dateTime<-paste(fData$Date, fData$Time, sep = " ")
dateTime<-strptime(dateTime, format = "%d/%m/%Y %H:%M:%S")
png(filename = "./Coursera/Exploratory Data Analysis/plot2.png", width = 480, height = 480)
plot(dateTime, gap, type="l", xlab="", ylab = "Global Active Power (Kilowatts)")
dev.off()