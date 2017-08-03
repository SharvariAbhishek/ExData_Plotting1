library(sqldf)  # loading sqldf package 

# Check whether the file containing data exists or not. If not, download and unzip  the data
#===============================================================================================================

    
    if(!file.exists("household_power_consumption.txt")) {
      download.file("https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip", destfile = "./Household_Data.zip")
      unzip("Household_Data.zip")
    }


#As we are using only the data from date "1/2/2007 till 2/2/2017" in dataset, -
#-read.csv.sql command has been used to extract the below subset of data while reading it.
#-----------------------------------------------------------------------------------------

    usageData <- read.csv.sql("household_power_consumption.txt","select * from file where Date = '1/2/2007' or Date = '2/2/2007' ", sep=";", header = TRUE)

#Changing the format of date and Time columns present in dataset and assigning it to variable called dateTime
#-----------------------------------------------------------------------------------------------------------     
        
    dateTime <- as.POSIXct(paste(usageData$Date, usageData$Time), format = "%d/%m/%Y %H:%M:%S")

    
#Opening png screen graphic device plot4.png
#---------------------------------------------- 
    
    png("plot3.png", height = 480, width = 480)

#Measuring the Energy submetering No 1(active energy consumed by kitchen appliances) varying over a 2-day period in February, 2007.   
    
    plot(dateTime, usageData$Sub_metering_1, type ="l", col = "black", ylab = "Enery sub meeting", xlab = " ")
    
#Measuring the Energy submetering No 2(active energy consumed by laundry appliances) varying over a 2-day period in February, 2007.    
    
    lines(dateTime, usageData$Sub_metering_2, type = "l", col = "red")

#Measuring the Energy submetering No 3(active energy consumed by AC and water heater) varying over a 2-day period in February, 2007.
    
    lines(dateTime, usageData$Sub_metering_3, type = "l", col = "blue")

    legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))

dev.off()

