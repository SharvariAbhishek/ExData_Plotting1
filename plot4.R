library(sqldf)  # loading sqldf package 

# Check whether the file containing data exists or not. If not, download and unzip  the data
#===============================================================================================================

    if(!file.exists("household_power_consumption.txt")) {
      download.file("https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip", destfile = "./Household_Data.zip")
      unzip("Household_Data.zip")
    }



#As we are using only the data from date "1/2/2007 till 2/2/2017" in dataset, -
#-read.csv.sql command has been used to extract the below subset of data while reading it.
#--------------------------------------------------------------------------------------------------------
  usageData <- read.csv.sql("household_power_consumption.txt","select * from file where Date = '1/2/2007' or Date = '2/2/2007' ", sep=";", header = TRUE)


  
#Changing the format of date and Time columns present in dataset and assigning it to variable called dateTime
#--------------------------------------------------------------------------------------------------------
  dateTime <- as.POSIXct(paste(usageData$Date, usageData$Time), format = "%d/%m/%Y %H:%M:%S")

  
#Opening png screen graphic device plot4.png
#----------------------------------------------  
  png("plot4.png", height = 480, width = 480)

#Calling function par to set the plot containg 2 rows and 2 columns using mfrow parameter
#---------------------------------------------  
  par(mfrow = c(2,2))
  
  
#First plot (Top Left): Global active power~dateTime
#----------------------------------------------------
  
  plot(dateTime, usageData$Global_active_power, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts)")

#Second plot(Top right) :  Volatge ~ dateTime
#---------------------------------------------------
  
  plot(dateTime, usageData$Voltage, type = "l", xlab = "dateTime", ylab = "Voltage")

# Third plot(Bottom Left) : Energy sub meter ~ dateTime
#-------------------------------------------------------
  
  plot(dateTime, usageData$Sub_metering_1, type ="l", col = "black", ylab = "Enery sub meeting", xlab = " ")
  lines(dateTime, usageData$Sub_metering_2, type = "l", col = "red")
  lines(dateTime, usageData$Sub_metering_3, type = "l", col = "blue")

  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))

#Fourth plot (Bottom right) :  Global reactive power~dateTime
#-----------------------------------------------------------  
  plot(dateTime, usageData$Global_reactive_power, type = "l", xlab = "dateTime", ylab = "Global_Reactive_Power")

dev.off()