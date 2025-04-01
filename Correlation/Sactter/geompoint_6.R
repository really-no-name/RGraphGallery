# Title: geompoint_6
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/4/1
# Description: 散点图 geom_point geom_rug 分布 地毯线

# library
library(ggplot2)

# Iris dataset
head(iris)

# plot
ggplot(data=iris, aes(x=Sepal.Length, Petal.Length)) +
  geom_point() +
  geom_rug(col="steelblue",  # 设置地毯线的颜色
           alpha=0.3,  # 线条的透明度
           linewidth=1.5,  # 设置地毯线的粗细
           # sides = "b"  # 仅显示在 x 轴底部  可选 "b"（底部）、"l"（左）、"r"（右）、"t"（顶部）或组合（如 "bl" 表示底部和左侧）
           length = unit(0.02, "npc")  # 更短的线段  控制线段长度（单位是绘图区域的比例，默认为 0.03）
  )