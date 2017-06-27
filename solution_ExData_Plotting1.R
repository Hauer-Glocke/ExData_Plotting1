##This is my solution
#You should be able to run this code and obtain the 
#required plots.

#Clear Working Environment
rm(list=ls())
cat("\f")

#Loading necessary libraries
library(readr)
library(dplyr)

#Reading data, adjust classes and clear environment
loc <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
temp <- tempfile()
download.file(loc,temp)
con <- unz(temp, "household_power_consumption.txt")
df <- read_csv2(con)
unlink(temp)

data <- df %>%
        mutate(Date=as.Date(Date, format = "%d/%m/%Y")) %>%
        filter(Date %in% as.Date(c("2007-02-01","2007-02-02"))) %>%
        mutate(datetime=as.POSIXct(paste(Date, Time))) %>%
        select(datetime, Global_active_power,
               Global_reactive_power,
               Voltage, Sub_metering_1,
               Sub_metering_2, Sub_metering_3) %>%
        mutate(Global_active_power=as.numeric(Global_active_power))%>%
        mutate(Global_reactive_power=as.numeric(Global_reactive_power))%>%
        mutate(Voltage=as.numeric(Voltage))%>%
        mutate(Sub_metering_1=as.numeric(Sub_metering_1))%>%
        mutate(Sub_metering_2=as.numeric(Sub_metering_2))%>%
        mutate(Sub_metering_3=as.numeric(Sub_metering_3))

rm(df,con,loc,temp)

##The following codes create the png-files.
##If you run it, you will receive the output.
##To see the subsequent code, you need to open the R-Skripts separately.
#Create the first plot
source("plot1.R")

#Create the second plot
source("plot2.R")

#Create the third plot
source("plot3.R")

#Create the fourth plot
source("plot4.R")
