# Title: barplot_6
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/30
# Description: 柱状图 barplot 标签样式

# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# Customize labels (left)
barplot(height=data$value, names=data$name,
        names.arg=c("group1","group2","group3","group4","group5"),
        font.axis=3,  # 字体：1：正常，2：粗体，3：斜体，4：粗体斜体
        col.axis="orange",  # 颜色
        cex.axis=1.2  # 尺寸
        )

# Customize title (right)
barplot(height=data$value, names=data$name,
        xlab="category",
        font.lab=2,
        col.lab="orange",
        cex.lab=2
        )