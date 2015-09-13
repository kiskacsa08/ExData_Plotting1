load_data <- function() {
  dates <- as.Date(c("2007.02.01", "2007.02.02"), "%Y.%m.%d")
  powerdata <- read.table("household_power_consumption.txt", sep = ";", na = "?", header = TRUE)
  powerdata$Time <- strptime(paste(powerdata$Date, powerdata$Time), "%d/%m/%Y %H:%M:%S", "")
  powerdata$Date <- as.Date(powerdata$Date, "%d/%m/%Y")
  powerdata <- powerdata[powerdata$Date %in% dates,]
}