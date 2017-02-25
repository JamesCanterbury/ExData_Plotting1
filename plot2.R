plot2 <- function() {
  
  ## Set the plot file and file size
  png("plot2.png", width=480, height=480)
  
  ## set plot attributes
  plot(df_pow$Time, df_pow$Global_active_power, type= "l", xlab= "", ylab= "Global Active Power (kilowatts)")
  
  ## turn off the file write process
  dev.off()
  
  ## provide status of file write location and write completion
  cat("plot2.png has been saved in", getwd())
  
}
