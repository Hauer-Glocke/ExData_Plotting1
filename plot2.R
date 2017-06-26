#Code the second plot
dev.off()
plot(data$datetime,
     data$Global_active_power,type="n",
     ylab="Global Active Power (kilowatts)",
     xlab="")
lines(data$datetime,
     data$Global_active_power)
        ##I hope this does not create the German X-Axis as it does for me.

#How to save the plot
dev.copy(png,"plot2.png")
dev.off()