# Title: geompoint_5
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/4/1
# Description: 散点图 geompoint 注释 geom_label geom_text

# library
library(ggplot2)

# Keep 30 first rows in the mtcars natively available dataset
data <- head(mtcars, 30)

# 1/ add text with geom_text, use nudge to nudge the text
ggplot(data, aes(x=wt, y=mpg)) +
  geom_point() + # Show dots
  geom_text(
    label=rownames(data),
    nudge_x = 0.25, nudge_y = 0.25
    # check_overlap = T
  )


# 1/ add text with geom_text, use nudge to nudge the text
ggplot(data, aes(x=wt, y=mpg)) +
  geom_point() + # Show dots
  geom_label(
    label=rownames(data),
    nudge_x = 0.25, nudge_y = 0.25
    # check_overlap = T
  )

# Add one annotation
ggplot(data, aes(x=wt, y=mpg)) +
  geom_point() + # Show dots
  geom_label(
    label="Look at this!",
    x=4.1,  # 标签的x轴坐标位置为4.1
    y=20,  # 标签的y轴坐标位置为20
    label.padding = unit(0.55, "lines"), # 标签文本与背景矩形边框之间的内边距，这里设置为0.55行高（"lines"是单位，表示文本行高度的倍数）
    label.size = 0.35,  # 标签边框的线条粗细为0.35（单位通常是毫米或磅，取决于图形设备）。
    color = "black",  # 标签文本的颜色为黑色（color在geom_label()中通常指文本颜色，而非边框颜色）。
    fill="#69b3a2"  # 标签背景矩形的填充颜色为十六进制颜色#69b3a2（一种蓝绿色）。
  )


# 仅选取部分数据进行注释
# library
library(ggplot2)
library(dplyr)
library(tibble)

# Keep 30 first rows in the mtcars natively available dataset
data <- head(mtcars, 30)

# Change data rownames as a real column called 'carName'
data <- data %>%
  rownames_to_column(var="carName")

# Plot
ggplot(data, aes(x=wt, y=mpg)) +
  geom_point() +
  geom_label(
    data=data %>% filter(mpg>20 & wt>3), # Filter data first
    aes(label=carName)
  )