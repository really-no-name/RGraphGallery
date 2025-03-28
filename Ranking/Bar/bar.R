# Title: bar
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/28
# Description: barplot 柱状图 基本


data <- data.frame(
  name=c("A","B","C","D","E") ,
  value=c(3,12,5,18,45)
)

barplot(height = data$value, names = data$name)