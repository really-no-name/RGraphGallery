# Title: barplot$
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/25
# Description: 柱状图

# Load ggplot2
library(ggplot2)

# Create data
data <- data.frame(
  name=c("A","B","C","D","E") ,
  value=c(3,12,5,18,45)
  )

# Barplot
ggplot(data, aes(x=name, y=value)) +
  geom_bar(stat = "identity")