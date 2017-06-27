#Code the fourth plot
dev.off()
par(mfrow=c(2,2))

plot(data$datetime,
     data$Global_active_power,type="n",
     ylab="Global Active Power (kilowatts)",
     xlab="")
lines(data$datetime,
      data$Global_active_power)

plot(data$datetime,
     data$Voltage/1000,type="n",
     ylab="Voltage",
     xlab="")
lines(data$datetime,
      data$Voltage/1000)

plot(data$datetime,
     data$Sub_metering_1,type="n",
     ylab="Energy sub metering",
     xlab="")
lines(data$datetime,
      data$Sub_metering_1)
lines(data$datetime,
      data$Sub_metering_2,
      col="red")
lines(data$datetime,
      data$Sub_metering_3,
      col="blue")
legend("topright",
       lty=1,lwd = 2,
       col = c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), 
       bty="n")

plot(data$datetime,
     data$Global_reactive_power,type="n")
lines(data$datetime,
      data$Global_reactive_power)

#How to save the plot
dev.copy(png,"plot4.png")
dev.off()