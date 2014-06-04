require(lubridate) # makes life easier when handling dates

#read in the data for the assignment, massage dates and subset the interesting bits

headers <-read.table(dir()[1], sep = ";", nrows = 1, header = TRUE)
whole <-read.table(dir()[1], skip = (45*24*60+6*60), sep = ";", nrows = 4*24*60-23*60, header = FALSE)
headers <- names(headers)
names(whole)<-headers
datetime <- paste(whole$Date, whole$Time)
datetime <- parse_date_time(datetime, "dmy hms")
data <-data.frame(datetime = datetime, subset(whole[,(3:9)]) )
d<-subset(data, data$datetime >= ymd("2007-02-01") & data$datetime < ymd("2007-02-03"))