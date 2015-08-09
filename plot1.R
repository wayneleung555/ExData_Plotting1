# directory
setwd("C:/Coursera/ExploratoryDataAnalysis/Project1")


# read in data file from source , convert from txt to R format
# household_power_consumption.txt
destfilename <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfilename)
filename <- unzip(destfilename)
unlink(destfilename)
datafull <- read.table(filename, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")




# use only two days data 
data <- datafull[datafull$Date %in% c("1/2/2007","2/2/2007") ,]     # str(data)  , check data


# create plots 
globalActivePower <- as.numeric(data$Global_active_power)    # convert character to numeric
png("plot1.png", width=480, height=480)                    # create empty png file in working directory
hist(globalActivePower, col="red",
                        main="Global Active Power", 
                        xlab="Global Active Power (kilowatts)")
dev.off()







