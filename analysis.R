library(tidyverse)
library(dplyr)
library(readr)
library(ggplot2)
load("rda/muders.rda")
murders%>% mutate(abb=reorder(abb,rate))%>% ggplot(aes(abb,rate))+geom_bar(width=0.5,stat="identity", color="black")+coord_flip()

ggsave("figs/barplot.png")