require(dplyr)
require(tidyr)
require(ggplot2)

q2data <- data %>%
        na.omit %>%
        group_by(interval) %>%
        summarize(mean_steps = mean(steps))

q2_line <- ggplot(q2data, aes(x = interval, y = mean_steps)) +
                geom_line() +
                labs(title = "Average Steps by Interval", x = "Interval", y = "Mean Steps")

print(q2_line)

max_avg_interval <- max(q2data$mean_steps)
