library(tidyverse)
library(RCurl)

x <- getURL("https://raw.githubusercontent.com/ivalexander13/RNASeq-Ephrin/master/results/alignment_summary.csv")
summary <- read.csv("https://raw.githubusercontent.com/ivalexander13/RNASeq-Ephrin/master/results/alignment_summary.csv")

overall_rate <-
  ggplot(data = summary, mapping = aes(x = sample, y = overall.rate)) +
    ggtitle("Overall Rate of All Samples") +
    geom_col(fill = "#FFCC00") +
    geom_text(aes(label = overall.rate), vjust = -0.5) +
    coord_cartesian(ylim = c(0.5, 1)) 

unique_rate <-
  ggplot(data = summary, mapping = aes(x = sample, y = aligned.1.time/reads)) +
  ggtitle("Rate of Uniquely Mapped Reads") +
  geom_col(fill = "#FFCC00") +
  geom_text(aes(label = round(aligned.1.time/reads, 2)), vjust = -0.5) +
  coord_cartesian(ylim = c(0.5, 1)) +
  geom_hline(yintercept = 0.7, color = "#72757e")

unique_rate

