# Title: Bar_3
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/27
# Description:  调整宽度的柱状图


library(ggplot2)

data <- data.frame(
  name = c("a", "b", "c", "d", "e"),
  value = c(23, 12, 32, 23, 45)
)

ggplot(data, aes(x=name, y= value)) +
  geom_bar(stat = "identity" ,
           width = 0.1  # 0 - 1
  )