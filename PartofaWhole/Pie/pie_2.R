# Title: pie_2
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/4/2
# Description:  饼图 pie() 颜色

# Prepare a color palette. Here with R color brewer:
library(RColorBrewer)
myPalette <- brewer.pal(5, "Set2")

# You can change the border of each area with the classical parameters:
pie(Prop
  , labels = c("Gr-A","Gr-B","Gr-C","Gr-D","Gr-E")  # 标签
  , border="white"  # 边缘
  , col=myPalette  # 填充
)