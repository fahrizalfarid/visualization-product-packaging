library(ggplot2)

filename <- "top10_item_retail.txt"

top_rank <- read.csv(
  filename,
  sep = ","
)

top_rank.viz <- ggplot(data = top_rank, aes(x = Nama.Produk, y = Jumlah)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=Jumlah), vjust=1.6, color="white", size=3.5)+
  theme_minimal()

top_rank.viz


ggsave("top10_item_retail.pdf", width = 40, height = 40, units = "cm")
