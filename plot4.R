plot4 <- function() {
  
  ## Set the plot file and file size
  png("plot4.png", width=480, height=480)
  
  ## set plot attributes
  
  ## function to set up 4 plots in one file
  par(mfrow = c(2, 2)) 
  
    # plot 1
  plot(df_pow$Time, df_pow$Global_active_power, type= "l", xlab= "", ylab= "Global Active Power")
  
    ## plot2
  
  plot(df_pow$Time,df_pow$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
    ## plot3
  plot(df_pow$Time, df_pow$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
    lines(df_pow$Time, df_pow$Sub_metering_2,col="red")
    lines(df_pow$Time, df_pow$Sub_metering_3,col="blue")
    legend("topright", col=c("black","red","blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(1,1,1))
  
  ## plot 4
  plot(df_pow$Time, df_pow$Global_reactive_power, type="l", xlab="dateime", ylab="Global_reactive_power")
  
  
   ## turn off the file write process
  dev.off()
 
  ## provide status of file write location and write completion
  cat("plot4.png has been saved in", getwd())
  
}







