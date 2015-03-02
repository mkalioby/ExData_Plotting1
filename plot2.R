header<- read.table("household_power_consumption.txt",sep=";",nrows=1,header=TRUE,colClasses = c("Date","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),stringsAsFactors=FALSE)
x<-read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880)
names(x)<-names(header)
x$DateTime<-strptime(paste(x$Date,x$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(x$DateTime,x$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")

dev.off()
