source("load_data.R")

if (is.null(powerdata)) {
  powerdata <- load_data()
}

png("plot1.png", width = 480, height = 480)
hist(powerdata$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", col = "red")
dev.off()