#Code for the first plot
hist(data$Global_active_power, col="red",
 xlab="Global Active Power (kilowatts)",
 main="Global Active Power")

#How to save the plot
dev.copy(png,"plot1.png")
dev.off()
