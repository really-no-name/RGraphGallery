# Title: barplot_5
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/30
# Description: 柱状图 barplot 宽度 空白宽度


# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# Control space:
barplot(height=data$value, names=data$name,
        col=rgb(0.2, 0.4, 0.6, 0.6),
        space = c(0.1, 0.2, 3, 1.5, 0.3),  # 空白宽度
        width = c(0.1, 0.2, 3, 1.5, 0.3)  # 宽度
)