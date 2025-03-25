# Title: Horizontal_barplot
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/25
# Description: 水平柱状图

# Load ggplot2
library(ggplot2)

data <- data.frame(
  name = c("a", "b", "c", "d", "e"),
  value = c(3,12,5,18,45)
)

ggplot(data, aes(x = name, y = value)) + geom_bar(stat = "identity") + coord_flip()