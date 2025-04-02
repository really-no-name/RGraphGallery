# Title: coordpolar_1
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/4/2
# Description:  饼图 coord_polar() geom_bar() 基础

# Load ggplot2
library(ggplot2)

# Create Data
data <- data.frame(
  group=LETTERS[1:5],
  value=c(13,7,9,21,2)
)

# Basic piechart
ggplot(data, aes(x="", y=value, fill=group)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  theme_void() # remove background, grid, numeric labels