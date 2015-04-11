# Since my OS language is Chinese, I have to remove the tick label of x axis, and using 'axis' function (as follow) to make the tick labels in English

png(file='plot4.png',  width = 480, height = 480)
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

# P1
with(hpc2, plot(DateTime, Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)', xaxt='n'))
axis(1, at=c(as.numeric(strptime('2007-2-1', '%Y-%m-%d')),as.numeric(strptime('2007-2-2', '%Y-%m-%d')),as.numeric(strptime('2007-2-3', '%Y-%m-%d'))), labels=c('Thu','Fri','Sat'))

# P2
with(hpc2, plot(DateTime, Voltage, xlab='datetime', type='l', xaxt='n'))
axis(1, at=c(as.numeric(strptime('2007-2-1', '%Y-%m-%d')),as.numeric(strptime('2007-2-2', '%Y-%m-%d')),as.numeric(strptime('2007-2-3', '%Y-%m-%d'))), labels=c('Thu','Fri','Sat'))

# P3
with(hpc2, plot(DateTime, Sub_metering_1, type='l', bty='o', xaxt='n', xlab='', ylab='Energy sub metering'))
with(hpc2, lines(DateTime, Sub_metering_2, col='red'))
with(hpc2, lines(DateTime, Sub_metering_3, col='blue'))
axis(1, at=c(as.numeric(strptime('2007-2-1', '%Y-%m-%d')),as.numeric(strptime('2007-2-2', '%Y-%m-%d')),as.numeric(strptime('2007-2-3', '%Y-%m-%d'))), labels=c('Thu','Fri','Sat'))
legend('topright', bty='n', lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#P4
with(hpc2, plot(DateTime, Global_reactive_power, xlab='datetime', type='l', xaxt='n'))
axis(1, at=c(as.numeric(strptime('2007-2-1', '%Y-%m-%d')),as.numeric(strptime('2007-2-2', '%Y-%m-%d')),as.numeric(strptime('2007-2-3', '%Y-%m-%d'))), labels=c('Thu','Fri','Sat'))
dev.off()
