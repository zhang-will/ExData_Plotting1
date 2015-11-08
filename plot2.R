
data <- read.csv("household_power_consumption.txt",  
                 skip=66637, 
                 nrows=2880, 
                 na.strings = "?", 
                 header=F, 
                 sep=";") 
 
names(data) <- names(read.csv("household_power_consumption.txt", nrows=1,sep=";"))

data$DateTime <- as.POSIXct(paste(data$Date, data$Time, sep=" "),  
                         format="%d/%m/%Y %H:%M:%S") 

png(filename="plot2.png", width=480, height=480)
plot(data$DateTime,  
      data$Global_active_power,
      col="black",  
      ylab="Global Active Power (kilowatts)", 
      xlab="", 
      main="",
      type = 'l',
     ) 
 dev.off() 
