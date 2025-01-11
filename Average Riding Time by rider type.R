data <- read.csv("/cloud/project/average_riding_time_in_minutes.csv")
library(ggplot2)
ggplot(data, aes(x = member_casual, y = average_riding_time_in_minutes, fill = member_casual)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = round(average_riding_time_in_minutes, 2)),
            vjust = -0.5,  
            size = 4) +    
  labs(title = "Average Riding Time by Membership Type",
       x = "Membership Type",
       y = "Average Riding Time (minutes)") +
  scale_fill_manual(values = c("member" = "blue", "casual" = "darkorange")) +  
  theme_minimal()
