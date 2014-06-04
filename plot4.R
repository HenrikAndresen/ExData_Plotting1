source("readdata.R") # This will read in the data

png("plot4.png") # Open a png graphic device defaults to 480x480 px

par(mfrow = c(2,2))

plot(d$datetime, d$Global_active_power, type = "n", ylab = "", xlab = "")
title(main = NULL, ylab = "Global Powering Meter")
lines(d$datetime, d$Global_active_power, ylab = NULL)

plot(d$datetime, d$Voltage, type = "n", ylab = "", xlab = "datetime")
title(main = NULL, ylab = "Voltage")
lines(d$datetime, d$Voltage, ylab = NULL)

plot(d$datetime, d$Sub_metering_1, type = "n", ylab = "", xlab = "")
title(main = NULL, ylab = "Energy Sub Metering", xlab= "")
lines(d$datetime, d$Sub_metering_1)
lines(d$datetime, d$Sub_metering_2, col = "red")
lines(d$datetime, d$Sub_metering_3, col = "blue")

legend("topright", 
       c("sub metering 1", "sub metering 2", "sub metering 3"),
       bty = "n",
       lty = c(1,1,1),
       lwd = c(2,2,2),
       col = c("black", "red","blue")
)

plot(d$datetime, d$Global_reactive_power, type = "n", ylab = "", xlab = "datetime")
title(main = NULL, ylab = "Global reactive power")
lines(d$datetime, d$Global_reactive_power, ylab = NULL)

dev.off() # close the graphic device
