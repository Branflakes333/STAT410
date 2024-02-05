library("HSAUR3")
library(ggplot2)
library(tidyverse)
data("water")

ggplot(data = water, aes(x = mortality, y = hardness, color = town)) +
  geom_point() +
  labs(
    title = "Mortality and Water Hardness in England and Wales",
    subtitle = "Group 5",
    x = "Mortality", y= "Water Hardness"
  ) +
  facet_wrap(~location)

ggplot(data = water, aes(x= mortality, fill = location)) +
  geom_histogram()

ggplot(data = water, aes(x = mortality, y = hardness, color = location)) +
  geom_point() +
  geom_smooth(method = 'lm') +
  labs(
    title = "Mortality and Water Hardness in England and Wales",
    subtitle = "Group 5",
    x = "Mortality", y= "Calcium Concentration(parts per million)",
    caption = "Appears to be higher calcium concentration 
    in the south and lower mortality than North"
  )

ggplot(data = water, aes(x= mortality)) +
  geom_histogram(bins = 30) +
  facet_wrap(~location)

ggplot(data = water, aes(x= hardness)) +
  geom_histogram(bins = 30) +
  facet_wrap(~location)

ggplot(data = water, aes(x = mortality, y = location)) +
  geom_boxplot()

ggplot(data = water, aes(x= mortality, color = location)) +
  geom_density()

ggplot(data = water, aes(x = mortality, y = hardness)) +
  geom_point() +
  geom_smooth(method = 'lm') +
  labs(
    title = "Mortality and Water Hardness in England and Wales",
    subtitle = "Group 5",
    x = "Mortality", y= "Calcium Concentration(parts per million)",
  )

