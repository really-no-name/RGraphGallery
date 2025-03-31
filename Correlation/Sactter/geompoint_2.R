# Title: geompoint_2
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/31
# Description: 散点图 颜色 geompoint

# library
library(ggplot2)

# Iris dataset is natively provided by R
#head(iris)

# use options!
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
    geom_point(
        color="orange",  # 圆圈轮廓颜色
        fill="#69b3a2",  # 填充颜色
        shape=21,  # 形状
        alpha=0.5,  # 透明度 0 - 1
        size=6,  # 点尺寸
        stroke = 2  # 轮廓宽度
        )