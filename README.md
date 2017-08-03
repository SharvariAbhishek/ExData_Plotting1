## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data





When loading the dataset into R, please consider the following:

* The dataset has 2,075,259 rows and 9 columns. First
calculate a rough estimate of how much memory the dataset will require
in memory before reading into R. Make sure your computer has enough
memory (most modern computers should be fine).

* We will only be using data from the dates 2007-02-01 and
2007-02-02. One alternative is to read the data from just those dates
rather than reading in the entire dataset and subsetting to those
dates.

* You may find it useful to convert the Date and Time variables to
Date/Time classes in R using the `strptime()` and `as.Date()`
functions.

* Note that in this dataset missing values are coded as `?`.


## Making Plots

Our overall goal here is simply to examine how household energy usage
varies over a 2-day period in February, 2007. plots are constructed using base plotting systems.


This repo contains 4 scripts to construct each plot:

Dataset used : `usageData` - Contains the 2 days data of household energy usage from 2007-02-01 till 2007-02-02

### plot1.R:
* Downloads the data and extracts the zip file containing data if it is not present in current working directory.
* Subsets the data while reading it.
* Changes the format of Date column in dataset.
* Constructs 'plot1.png` using `hist()` command to measure the `Global active power` in dataset.

### plot2.R:
* Downloads the data and extracts the zip file containing data if it is not present in current working directory.
* Subsets the data while reading it.
* Changes the format of Date column in dataset.
* Constructs 'plot2.png` using `plot()` command to measure the `Global active power` in dataset varying over a period of 2 days of time Feb 2007.

### plot3.R:
* Downloads the data and extracts the zip file containing data if it is not present in current working directory.
* Subsets the data while reading it.
* Changes the format of Date column in dataset.
* Constructs 'plot3.png` using `plot()` and `lines` command to measure the `sub_metering_1`, `sub_metering_2` and `sub_metering_3` in dataset varying over a period of 2 days of time Feb 2007.

### plot4.R:
* Downloads the data and extracts the zip file containing data if it is not present in current working directory.
* Subsets the data while reading it.
* Changes the format of Date column in dataset.
* Constructs 'plot4.png` using `plot()` and `lines` command to measure the `Global active power`, `Voltage`, `sub_metering_1`, `sub_metering_2` , `sub_metering_3` and  `Global reactive power` in dataset varying over a period of 2 days of time Feb 2007.


The four plots that need to be constructed are shown below. 


### Plot 1


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

