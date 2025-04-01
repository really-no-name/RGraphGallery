# Title: geompoint_4
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/3/31
# Description: 散点图 geompoint 分组

# library
library(ggplot2)
library(hrbrthemes)  # 是一个专注于为 ggplot2 提供以排版为中心的主题和主题组件的扩展包。

# Transparency
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
    geom_point(size=3) +
    ggtitle("Transparency") +
    theme_ipsum()

# Shape
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, shape=Species)) +
    geom_point(size=2, color="lightblue") +
    ggtitle("Shape") +
    theme_ipsum()

# Size
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, size=Petal.Width)) +
    geom_point(color="darkred") +
    ggtitle("Size") +
    theme_ipsum()

# A basic scatterplot with color depending on Species
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, shape=Species, alpha=Species, size=Species, color=Species)) +
    geom_point() +
    theme_ipsum()