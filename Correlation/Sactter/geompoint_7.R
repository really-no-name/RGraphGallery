# Title: geompoint_7
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/4/1
# Description: 散点图 scatter geompoint ggmarginal 分布

library(ggplot2)
library(ggExtra)

# The mtcars dataset is proposed in R
head(mtcars)

# classic plot :
p <- ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, size=cyl)) +
      geom_point() +
      theme(legend.position="none")

# with marginal histogram
p1 <- ggMarginal(p, type="histogram")

# marginal density
p2 <- ggMarginal(p, type="density")

# marginal boxplot
p3 <- ggMarginal(p, type="boxplot")

# print(p1)
# print(p2)
print(p3)