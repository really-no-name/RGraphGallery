# Title: barplot_7
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/30
# Description: 柱状图 barplot 边距 长标题


# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# Increase margin size
par(mar=c(11,4,4,4))  # bottom, left, top, right

# Uniform color
barplot(height=data$value,
        col="#69b3a2",
        names.arg=c("very long group name 1","very long group name 2","very long group name 3","very long group name 4","very long group name 5"),
        las=2  # 2：始终垂直于轴
)