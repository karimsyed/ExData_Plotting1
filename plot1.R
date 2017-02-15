path<-"./Coursera/Exploratory Data Analysis/household_power_consumption.txt"
mydata<-read.table(path, header = T, sep = ";")

fData<-filter(mydata, Date=="1/2/2007"|Date=="2/2/2007")
gap<-as.numeric(fData$Global_active_power)
png(filename = "./Coursera/Exploratory Data Analysis/plot1.png", width = 480, height = 480)
hist(gap, col="RED", main = "Global Active Power", xlab = "Global Active Power (Kilowatts)")
dev.off()