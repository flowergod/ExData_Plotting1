# Since my OS language is Chinese, I have to remove the tick label of x axis, and using 'axis' function (as follow) to make the tick labels in English

png(file='plot2.png',  width = 480, height = 480)
with(hpc2, plot(DateTime, Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)', xaxt='n'))
axis(1, at=c(as.numeric(strptime('2007-2-1', '%Y-%m-%d')),as.numeric(strptime('2007-2-2', '%Y-%m-%d')),as.numeric(strptime('2007-2-3', '%Y-%m-%d'))), labels=c('Thu','Fri','Sat'))
dev.off()
