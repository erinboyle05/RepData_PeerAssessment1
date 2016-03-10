require(dplyr)
require(tidyr)
require(ggplot2)

num_NA <- sum(is.na(data$steps))

# mean_by_interval <- data %>%
#         na.omit %>%
#         group_by(interval) %>%
#         summarize(mean_steps = mean(steps))

newdata <- data
newdata$steps[is.na(newdata$steps)] <- q2data$mean_steps[match(newdata$interval[is.na(newdata$steps)],q2data$interval)]
q3data <- newdata %>%
        group_by(date) %>%
        summarize(total_steps = sum(steps))


q3_hist <- ggplot(q3data, aes(x = total_steps)) +
        geom_histogram(bins = 10) +
        geom_vline(aes(xintercept = mean(total_steps)), color = "red") +
        geom_vline(aes(xintercept = median(total_steps)), color = "blue") +
        labs(title = "Frequency of Total Steps per Day", x = "Total Steps per Day")

print(q3_hist)

q3mean_total_steps <- mean(q3data$total_steps)
q3median_total_steps <- median(q3data$total_steps)
