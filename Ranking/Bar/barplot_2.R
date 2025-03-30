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
        col=rgb(0.2,0.4,0.6,0.7)  # 改颜色
)


# Specific color for each bar? Use a well known palette
library(RColorBrewer)
coul <- brewer.pal(5, "Set2")
barplot(height=data$value, names=data$name,
        col=coul
)

# Change border color
barplot(height=data$value, names=data$name,
        border="#69b3a2",
        col="white"
)