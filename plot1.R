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

    
#Changing the format of date column present in dataset
#-----------------------------------------------------    
    
    
    usageData$Date <- strptime(as.character(usageData$Date), "%d/%m/%Y")
 
       
#Measuring the household global minute-averaged active power with a one minute sampling    
#--------------------------------------------------------------------------------------
    
    
    hist(usageData$Global_active_power, xlab = "Global Active power(kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red")

    
#Copying the constructed plot to png file "plot2.png" with a width of 480 pixels and a height of 480 pixels.  
#-----------------------------------------------------------------------------------------------------------        
    
    
    dev.copy(png, "plot1.png", height = 480, width = 480)
    dev.off()