plot1 <- function() {
  
  ## Set the plot file and file size
  png("plot1.png", width=480, height=480)
  
  ## set plot attributes
  hist(df_pow$Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
  
  ## turn off the file write process
  dev.off()
  
  ## provide status of file write location and write completion
  cat("plot1.png has been saved in", getwd())
  
}
