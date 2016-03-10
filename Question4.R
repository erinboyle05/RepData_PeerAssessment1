require(dplyr)
require(tidyr)
require(ggplot2)

q4data <- newdata %>%
                mutate(day = weekdays(date)) %>%
                mutate(day = ifelse(day == "Saturday" | day == "Sunday", "Weekend", "Weekday")) %>%
                group_by(day,interval) %>%
                summarize(mean_steps = mean(steps))

q4_line <- ggplot(q4data, aes(x = interval, y = mean_steps)) +
        geom_line(color = "blue") +
        facet_grid(day ~.) +
        labs(title = "Average Steps by Interval", x = "Interval", y = "Mean Steps")
print(q4_line)
