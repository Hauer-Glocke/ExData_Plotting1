g <- gl(2,50, labels = c("Male", "Female")) #Length 100
head(g)
str(g)
x <- rnorm(100)
y <- rnorm(100)
plot(x,y)
plot(x,y, type="n")
points(x[g=="Male"], y[g=="Male"], col = "blue")
points(x[g=="Female"], y[g=="Female"], col = "red", pch=19)

library(readr)
library(dplyr)
temp1 <- read_csv2("household_power_consumption.txt",
                  na = c("?","NA"),
                  col_types = c("Date","Time",
                                "numeric", "numeric",
                                "numeric", "numeric",
                                "numeric", "numeric",
                                "numeric"))
data <- data %>%
        mutate(Date=as.Date(Date, format = "%d/%m/%Y") &
                Global_active_power = as.numeric(Global_active_power) )

library(lubridate)
data1 <- data %>%
        mutate(datetime=as.POSIXct(paste(Date, Time)))
                       
with(data, ymd(Date) + hms(Time))


hist(data$Global_active_power)

dev.copy(png,"plot1.png",width=10, height=10, units="in",res=480)
dev.off()
