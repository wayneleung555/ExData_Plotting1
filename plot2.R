
# read in data
# use only two days data 
# str(data)
datafull <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- datafull[datafull$Date %in% c("1/2/2007","2/2/2007") ,]     # str(data)  , check data



# combine Date and Time can convert to R datetime format
# plot the graphs
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


