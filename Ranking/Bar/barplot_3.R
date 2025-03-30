# Title: barplot_3
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/30
# Description: 柱状图 barplot 标题 范围

# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# Uniform color
barplot(height=data$value, names=data$name,
        col=rgb(0.8,0.1,0.1,0.6),
        xlab="categories",
        ylab="values",
        main="标题",
        ylim=c(0,40)  # 范围
        )