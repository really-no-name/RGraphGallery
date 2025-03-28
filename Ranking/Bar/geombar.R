# Title: barplot$
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/25
# Description: geom_bar 柱状图 基础

# Load ggplot2
library(ggplot2)

# Create data
data <- data.frame(
  name=c("A","B","C","D","E") ,
  value=c(3,12,5,18,45)
  )

# Barplot
ggplot(data, aes(x=name, y=value)) +  # aes(): 美学映射，将数据变量映射到图形属性
  geom_bar(stat = "identity")