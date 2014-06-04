source("readdata.R")

png("plot2.png") # Open a png graphic device defaults to 480x480 px

plot(d$datetime, d$Global_active_power, type = "n", ylab = "", xlab = "")
title(main = NULL, ylab = "Global Powering Meter")
lines(d$datetime, d$Global_active_power, ylab = NULL)

dev.off() # close the graphic device
