# Title: 2025zhongliang-1
# Author: Bolun Xu
# Version: 1.0
# Date: 2025/11/24
# Description:

library(ggplot2)

df <- data.frame(
  年份 = factor(c("2024", "2024", "2025", "2025"),
               levels = c("2024", "2025")),
  部分 = factor(c("下层", "上层", "下层", "上层"),
               levels = c("下层", "上层")),
  数值 = c(24.99, 192.74, 7.3, 168.26)
)

top_label <- data.frame(
  年份 = factor(c("2024", "2025"), levels = c("2024", "2025")),
  总和 = c(24.99 + 192.74, 7.3 + 168.26),
  标签 = c("217.73", "175.56")
)

p <- ggplot(df, aes(x = 年份, y = 数值, fill = 部分)) +
  geom_col(width = 0.6) +

  # 使用 geom_hline() 添加y=0的参考线
  geom_hline(
    yintercept = 0,           # 在y=0处画线
    color = "black",          # 线条颜色
    linewidth = 0.5,          # 线条粗细
    linetype = "solid"        # 线型
  ) +

  # 柱子内部数字
  geom_text(aes(label = 数值),
            family = 'Microsoft YaHei',
            size = 3.5,
            position = position_stack(vjust = 0.5),
            color = "white") +

  # 顶部数字
  geom_text(data = top_label,
            aes(x = 年份, y = 总和, label = 标签),
            family = 'Microsoft YaHei',
            size = 3.5,
            vjust = -0.5,
            inherit.aes = FALSE) +

  # 颜色
  scale_fill_manual(
    values = c("下层" = "#6ed1f4", "上层" = "#6076ce")
  ) +

  # 删除图例
  theme(legend.position = "none") +

  # 🔥 最终关键部分：强制白底 + 删除 panel 背景 + 保留 x 轴线
  theme(
    # 整图背景白
    plot.background  = element_rect(fill = "white", color = NA),
    # panel 白色且无边框（删除灰色背景）
    panel.background = element_rect(fill = "white", color = NA),

    # 删除所有网格线
    # panel.grid.major = element_blank(),
    # panel.grid.minor = element_blank(),

    # 隐藏 Y 轴所有元素
    axis.text.y = element_blank(),        # 隐藏Y轴文字
    axis.ticks.y = element_blank(),       # 隐藏Y轴刻度
    axis.line.y = element_blank(),        # 隐藏Y轴线
    axis.title.y = element_blank(),       # 隐藏Y轴标题

    # 隐藏 X 轴不需要的元素，只保留轴线
    axis.ticks.x = element_blank(),       # 隐藏X轴刻度
    axis.title.x = element_blank(),       # 隐藏X轴标题

    # 确保X轴线显示
    # axis.line.x = element_line(color = "black"),  # 显示X轴线

    # 文字设置
    plot.title = element_text(family = 'Microsoft YaHei', hjust = 0.5, size = 10, face = "bold"),
    axis.text.x = element_text(family = 'Microsoft YaHei', size = 10)
  ) +

  expand_limits(y = max(top_label$总和) * 1.15) +
  labs(title = "审减金额对比")

print(p)



