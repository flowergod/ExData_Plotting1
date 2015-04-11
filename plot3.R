# Since my OS language is Chinese, I have to remove the tick label of x axis, and using 'axis' function (as follow) to make the tick labels in English

png(file='plot3.png',  width = 480, height = 480)
with(hpc2, plot(DateTime, Sub_metering_1, type='l', xaxt='n', xlab='', ylab='Energy sub metering'))
with(hpc2, lines(DateTime, Sub_metering_2, col='red'))
with(hpc2, lines(DateTime, Sub_metering_3, col='blue'))
axis(1, at=c(as.numeric(strptime('2007-2-1', '%Y-%m-%d')),as.numeric(strptime('2007-2-2', '%Y-%m-%d')),as.numeric(strptime('2007-2-3', '%Y-%m-%d'))), labels=c('Thu','Fri','Sat'))
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
