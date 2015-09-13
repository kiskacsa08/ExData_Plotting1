source("load_data.R")

if (is.null(powerdata)) {
  powerdata <- load_data()
}

png("plot3.png", width = 480, height = 480)
plot(powerdata$Time, powerdata$Sub_metering_1, type = "s", xlab = "", ylab = "Energy sub metering", col = "black")
lines(powerdata$Time, powerdata$Sub_metering_2, col = "red")
lines(powerdata$Time, powerdata$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
dev.off()