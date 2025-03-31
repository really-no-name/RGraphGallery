# Title: geompoint_3
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/31
# Description:  散点图 geompoint hrbrthemes theme_ipsum

# library
library(ggplot2)
library(hrbrthemes)  # 是一个专注于为 ggplot2 提供以排版为中心的主题和主题组件的扩展包。

# Iris dataset is natively provided by R
#head(iris)

# use options!
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
    geom_point(
        color="black",  # 圆圈轮廓颜色
        fill="#69b3a2",   # 填充颜色
        shape=22,  # 形状
        alpha=0.5,  # 透明度 0 - 1
        size=6,  # 点尺寸
        stroke = 1  # 轮廓宽度
        ) +
    theme_ipsum()
# 核心主题：theme_ipsum（“ipsum”在拉丁语中是“精确”的意思）使用 Arial Narrow 字体，
# 这个字体在几乎所有现代系统上都应该安装了，所以它是“免费”的（没有版权问题）。
# 这种字体比较紧凑，具有固定的默认字距配对和几何数字。
