require(dplyr)
require(tidyr)
require(ggplot2)

q1data <- data %>%
        na.omit %>%
        group_by(date) %>%
        summarize(total_steps = sum(steps))


q1_hist <- ggplot(q1data, aes(x = total_steps)) +
                        geom_histogram(bins = 10) +
                        geom_vline(aes(xintercept = mean(total_steps)), color = "red") +
                        geom_vline(aes(xintercept = median(total_steps)), color = "blue") +
                        labs(title = "Frequency of Total Steps per Day", x = "Total Steps per Day")
print(q1_hist)

mean_total_steps <- mean(q1data$total_steps)
median_total_steps <- median(q1data$total_steps)
