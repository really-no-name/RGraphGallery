# Title: Bar_2
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/26
# Description:  改变柱状图的颜色

# Libraries
library(ggplot2)

# 1: uniform color. Color is for the border, fill is for the inside
# 示例1: 使用统一颜色
# color参数设置条形边框颜色，fill参数设置条形内部填充颜色
# rgb()函数指定颜色，参数分别为红、绿、蓝和透明度(0-1)

ggplot(mtcars, aes(x=as.factor(cyl) )) +  # 将cyl变量转换为因子作为x轴
  geom_bar(color="blue", fill=rgb(0.1,0.4,0.5,0.7) )  # 所有条形使用相同的边框蓝和填充色

# 2: Using Hue
# 示例2: 使用Hue色标
# fill=as.factor(cyl)表示按cyl因子水平填充不同颜色
# scale_fill_hue()调整颜色，c=40表示色相(chroma)强度
# theme(legend.position="none")移除图例

ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) +  # fill=as.factor(cyl): 按cyl的不同值填充不同颜色
  geom_bar( ) +
  scale_fill_hue(c = 40) +  # 使用色相颜色标度，c参数控制颜色饱和度
  theme(legend.position="none")  # 隐藏图例

# 3: Using RColorBrewer
# 示例3: 使用RColorBrewer调色板
# scale_fill_brewer()使用预定义的调色板
# palette="Set1"指定使用Set1调色板

ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) +
  geom_bar( ) +
  scale_fill_brewer(palette = "Set1") +  # 使用RColorBrewer的Set1调色板
  theme(legend.position="none")


# 4: Using greyscale:
# 示例4: 使用灰度色标
# scale_fill_grey()使用灰度颜色
# start和end参数指定灰度范围(0-1，0为黑，1为白)

ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) +
  geom_bar( ) +
  scale_fill_grey(start = 0.25, end = 0.75) +  # 使用灰度色标，从浅灰到深灰
  theme(legend.position="none")


# 5: Set manualy
# 示例5: 手动设置颜色
# scale_fill_manual()手动指定颜色
# values参数接受颜色名称或十六进制代码的向量

ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) +
  geom_bar( ) +
  scale_fill_manual(values = c("red", "green", "blue") ) +  # 手动指定红、绿、蓝三种颜色
  theme(legend.position="none")