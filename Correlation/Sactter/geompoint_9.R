# Title: geompoint_9
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/4/2
# Description: 散点图 线性拟合 分组

library(ggplot2)
library(geomtextpath)
library(hrbrthemes)

data(iris)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  geom_labelsmooth(aes(label = 'My Label'), fill = "white",
                method = "lm", formula = y ~ x,
                size = 6, linewidth = 2, boxlinewidth = 0.6) +
  theme_bw() + guides(color = 'none') # remove legend


ggplot(iris, aes(x = Sepal.Length, y = Petal.Width, color = Species)) +
  geom_point() +
  stat_smooth(
    method = "lm",
    formula = y ~ x,
    geom = "textpath",  # 使用 textpath 替代 textsmooth
    aes(label = Species),
    size = 4,          # 调整标签文字大小
    linewidth = 1,     # 调整线条粗细
    hjust = 0.95,      # 调整标签位置（0=左对齐，1=右对齐）
    gap = FALSE,       # 防止标签被截断
    text_smoothing = 30,  # 标签平滑度
    rich = TRUE,       # 允许更丰富的文本样式
    fill = "white",    # 标签背景填充
    boxcolour = "black",  # 标签边框颜色
    boxlinewidth = 0.5    # 标签边框粗细
  ) +
  theme_bw() +
  guides(color = 'none')  # remove legend