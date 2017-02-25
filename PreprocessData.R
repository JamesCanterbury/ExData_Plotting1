soupreprocessData <- function(zipfile = "household_power_consumption", file_type = ".zip", dest_file_type = ".txt"){
  ## Unzips file 
  unzip("household_power_consumption.zip")
  
  ## Loads unzipped file into memory
  file <- paste(zipfile, dest_file_type, sep = "")
  df <- read.table(file, header = TRUE, sep = ";", na.strings="?", stringsAsFactors = TRUE)
  
  ## Date filtering
  df <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]
  
  df<- transform(df, Time = strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"),Date = as.Date(Date, "%d/%m/%Y"))
                          
  

   
   ## Put data frame into the Global Env so it can be call by plot functions
  assign("df_pow", df, envir = .GlobalEnv) 
  
  
}