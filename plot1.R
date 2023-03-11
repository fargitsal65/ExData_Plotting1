plot1=function(){
  data=read.table("./household_power_consumption.txt", header = TRUE, sep =";"  )
  subdata=subset(data, Date == "1/2/2007" | Date =="2/2/2007")
  subdata$Global_active_power=as.numeric(subdata$Global_active_power)
  png("plot1.png", width=480, height=480)
  hist(subdata$Global_active_power, col="red", border="black", main ="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
  dev.off()
}
