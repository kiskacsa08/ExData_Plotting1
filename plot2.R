source("load_data.R")

if (is.null(powerdata)) {
  powerdata <- load_data()
}

png("plot2.png", width = 480, height = 480)
plot(powerdata$Time, powerdata$Global_active_power, type = "s", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()