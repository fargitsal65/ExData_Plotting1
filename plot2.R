plot2=function(){
  data=read.table("./household_power_consumption.txt", header = TRUE, sep =";"  )
  subdata=subset(data, Date == "1/2/2007" | Date =="2/2/2007")
  timedate=strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
  subdata=cbind(subdata, timedate)
  subdata$Global_active_power=as.numeric(subdata$Global_active_power)
  png("plot2.png", width=480, height=480)
  with(subdata, plot(timedate, Global_active_power, type="l", xlab="",ylab="Global Active Power (kilowatts)"))  
  dev.off()
}