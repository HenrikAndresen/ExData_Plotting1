source("readdata.R") # This will read in the data

png("plot3.png") # Open a png graphic device defaults to 480x480 px

plot(d$datetime, d$Sub_metering_1, type = "n", ylab = "", xlab = "")
title(main = NULL, ylab = "Energy Sub Metering", xlab= "")
lines(d$datetime, d$Sub_metering_1)
lines(d$datetime, d$Sub_metering_2, col = "red")
lines(d$datetime, d$Sub_metering_3, col = "blue")

legend("topright", 
       c("sub metering 1", "sub metering 2", "sub metering 3"),
       lty = c(1,1,1),
       lwd = c(2,2,2),
       col = c("black", "red","blue")
       )

dev.off() # close the graphic device