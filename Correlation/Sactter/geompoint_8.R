# Title: geompoint_8
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/4/1
# Description:  散点图 线性拟合 scatter geom_point

# Library
library(ggplot2)
library(hrbrthemes)

# Create dummy data
data <- data.frame(
  cond = rep(c("condition_1", "condition_2"), each=10),
  my_x = 1:100 + rnorm(100,sd=9),
  my_y = 1:100 + rnorm(100,sd=16)
)


# Basic scatter plot.
p1 <- ggplot(data, aes(x=my_x, y=my_y)) +
  geom_point(color="#69b3a2") +
  theme_ipsum()


# with linear trend
p2 <- ggplot(data, aes(x=my_x, y=my_y)) +
  geom_point() +
  geom_smooth(method=lm,  # lm，即最小二乘法回归
              color="red",
              se = TRUE,
              fill="#69b3a2"  # 设置置信区间的填充颜色为十六进制色 #69b3a2（一种蓝绿色）。仅当 se = TRUE 时生效
              # linetype = "dashed"  # 虚线
              # level = 0.99  # 99% 置信区间
  ) +
  theme_ipsum()
