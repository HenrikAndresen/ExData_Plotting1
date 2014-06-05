

require(lubridate) # makes life easier when handling dates

#read in the data for the assignment, massage dates and subset the interesting bits

lct <- Sys.getlocale("LC_TIME"); Sys.setlocale("LC_TIME", "C")
#Sys.setlocale("LC_TIME", lct)

headers <-read.table("household_power_consumption.txt", sep = ";", nrows = 1, header = TRUE)
whole <-read.table("household_power_consumption.txt", skip = (45*24*60+6*60), sep = ";", nrows = 4*24*60-23*60, header = FALSE)
headers <- names(headers)
names(whole)<-headers
datetime <- paste(whole$Date, whole$Time)
datetime <- parse_date_time(datetime, "dmy hms")
data <-data.frame(datetime = datetime, subset(whole[,(3:9)]) )
d<-subset(data, data$datetime >= ymd("2007-02-01") & data$datetime < ymd("2007-02-03"))

png("plot2.png") # Open a png graphic device defaults to 480x480 px

plot(d$datetime, d$Global_active_power, type = "n", ylab = "", xlab = "")
title(main = NULL, ylab = "Global Powering Meter")
lines(d$datetime, d$Global_active_power, ylab = NULL)

dev.off() # close the graphic device

Sys.setlocale("LC_TIME", lct)