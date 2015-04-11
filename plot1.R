
# Manipulate Data
hpc <- read.table(file='household_power_consumption.txt', header=TRUE, sep=';', na.strings='?', nrows=70000)
hpc2 <- rbind(subset(hpc, (Date=='1/2/2007')), subset(hpc, (Date=='2/2/2007')))
DateTime <- paste(hpc2$Date, hpc2$Time)
DateTime <- strptime(DateTime, '%d/%m/%Y %H:%M:%S')
hpc2 <- cbind(hpc2, DateTime)

# Plot
png(file='plot1.png',  width = 480, height = 480)
hist(hpc2$Global_active_power, col='red', xlab='Global Active Power (kilowatts)', main='Global Active Power')
dev.off()