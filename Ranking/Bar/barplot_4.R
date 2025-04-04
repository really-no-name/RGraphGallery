# Title: barplot_4
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/30
# Description: 柱状图 水平 barplot 标签方向

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

# las参数允许更改轴标签的方向：
#
# 0：总是与轴线平行
# 1：总是水平的
# 2：始终垂直于轴
# 3：总是垂直的。