# Title: bar_2
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/28
# Description: barplot 柱状图 颜色

# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

barplot(height = data$value, names = data$name,
        , col=rgb(0.2,0.4,0.6,0.7)  # 改颜色
)