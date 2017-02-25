plot3 <- function() {
  
  ## Set the plot file and file size
  png("plot3.png", width=480, height=480)
  
  ## set plot attributes
  plot(df_pow$Time, df_pow$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(df_pow$Time, df_pow$Sub_metering_2,col="red")
  lines(df_pow$Time, df_pow$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(1,1,1))
  
  ## turn off the file write process
  dev.off()



  ## provide status of file write location and write completion
  cat("plot3.png has been saved in", getwd())
  
}

