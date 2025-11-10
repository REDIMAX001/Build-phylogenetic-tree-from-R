# 安装并加载包
# BiocManager::install("ggtree")
library(ggtree)

library(ape)
library(ggplot2)
tree_string <- "((Inner82)Inner81,Inner140,(Inner34)Inner33,(Inner104)Inner103,(Inner87,Inner84,Inner86,Inner119,Inner85)Inner83,(Inner145)Inner144,Inner130,Inner112,Inner110,(Inner97)Inner96,Inner131,Inner109,Inner139,Inner111,(Inner71,Inner117,Inner73,Inner74,Inner72,Inner70,(Inner115)Inner69,Inner75)Inner68,Inner108,((Inner67)Inner66)Inner65,(Inner114,(Inner134)Inner63,Inner62,(Inner133)Inner132,Inner60,((Inner58)Inner57)Inner56,Inner61,Inner64,Inner59)Inner55,Inner105,(Inner95)Inner94,(Inner107)Inner106,(Inner92,Inner127,Inner128,Inner91,(Inner90)Inner89)Inner88,(Inner100,Inner141,Inner99)Inner98,Inner121,Inner116,(Inner102,Inner143)Inner101,(Inner36,Inner37)Inner35,(Inner44,Inner43,((Inner41,Inner42)Inner40)Inner39)Inner38,(Inner138)Inner137,((Inner113)Inner77)Inner76,Inner125,(Inner79,Inner80,Inner148,Inner124)Inner78,((Inner5)Inner4,(Inner3)Inner2)Inner1,(Inner49,Inner54,Inner47,Inner48,Inner52,Inner122,Inner51,Inner142,Inner146,Inner136,Inner46,Inner50,Inner149,Inner118,Inner135,Inner53)Inner45,((Inner13,(Inner11,Inner10)Inner9,Inner14,Inner12)Inner8,Inner147,(Inner123)Inner7,Inner27,Inner28,Inner29,Inner32,(Inner26,Inner25)Inner24,Inner23,(Inner22,Inner18,(Inner21)Inner20,Inner120,Inner19,(Inner17)Inner16)Inner15,Inner30,Inner31)Inner6,(Inner129)Inner93,Inner126)Inner0;"

tree <- read.tree(text = tree_string)
# 2. 基础绘图
ggtree(tree) + 
  geom_tiplab(size=2) +  # 顯示末端標籤，字體大小可以調整
  geom_nodelab(size=2, color="red") + # 顯示內部節點標籤，紅色
  xlim(0, 40) + # 調整x軸範圍以確保標籤顯示完全
  theme_minimal() +
  ggtitle("GSEI17542 Embryo5 Developmental Trajectory")


library(ggtree)
library(ggplot2)

# Create a beautiful tree
p_final <- ggtree(tree, layout="circular", branch.length="none", 
                  color="grey50", size=0.4) +
  geom_tiplab(size=2, offset=0.4, color="grey20", 
              hjust=0.5) +
  geom_tippoint(color="#E41A1C", size=1.2, alpha=0.6) +
  theme_tree() +
  theme(
    plot.title = element_text(hjust=0.5, size=16, face="bold", 
                              margin=margin(b=20)),
    plot.subtitle = element_text(hjust=0.5, size=11, color="grey40"),
    plot.margin = margin(30, 30, 30, 30),
    plot.background = element_rect(fill="white", color=NA),
    panel.background = element_rect(fill="white", color=NA)
  ) +
  ggtitle("GSE117542 Embryo4 Developmental Trajectory",
          subtitle="Circular Phylogenetic Tree (149 cells)")

# Display
print(p_final)
