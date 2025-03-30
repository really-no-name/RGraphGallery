# Title: barplot_4
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/30
# Description: 柱状图 水平 barplot

# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# Uniform color
barplot(height=data$value, names=data$name,
        col="#69b3a2",
        horiz=T, las=1  # 水平放置
)