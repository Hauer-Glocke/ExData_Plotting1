#Code the third plot
dev.off()
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
       lty=c(1,1,1),
       col = c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

#How to save the plot
dev.copy(png,"plot3.png")
dev.off()