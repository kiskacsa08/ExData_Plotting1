source("load_data.R")

if (is.null(powerdata)) {
  powerdata <- load_data()
}

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

# 1 (same as plot2):
plot(powerdata$Time, powerdata$Global_active_power, type = "s", xlab = "", ylab = "Global Active Power")

# 2:
plot(powerdata$Time, powerdata$Voltage, type = "s", xlab = "datetime", ylab = "Voltage")

# 3 (same as plot3):
plot(powerdata$Time, powerdata$Sub_metering_1, type = "s", xlab = "", ylab = "Energy sub metering", col = "black")
lines(powerdata$Time, powerdata$Sub_metering_2, col = "red")
lines(powerdata$Time, powerdata$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, box.lwd = 0)

# 4:
plot(powerdata$Time, powerdata$Global_reactive_power, type = "s", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()