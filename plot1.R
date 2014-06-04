source("readdata.R") # This will read in the data

png("plot1.png") # Open a png graphic device defaults to 480x480 px

hist(d$Global_active_power, col = "red", 
     main = "Global Active Power", 
     xlab ="Global Active Power (kilowatt)" 
     )

dev.off() # close the graphic device