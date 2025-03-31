# Title: geompoint_1
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/31
# Description:  散点图 geompoint

# library
library(ggplot2)

# The iris dataset is provided natively by R
#head(iris)

# basic scatterplot
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
    geom_point()