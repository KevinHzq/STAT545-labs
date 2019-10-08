library(tidyverse)
library(gapminder)

write.csv(gapminder, "./gapminder.csv")

gap_sum <- gapminder %>% 
  group_by(continent) %>% 
  summarise(ave_lifeExp = mean(lifeExp))
gap_sum
write.csv(gap_sum, "./gapminder_sum.csv")

gapminder_load <- read.csv("./gapminder_sum.csv")
rm(list = ls())
library(here)

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
download.file(url = data_url, destfile = here::here("greatestgivers.xls"))

file_name <- basename(data_url)

library(readxl)
philanthropists <- read_excel(here("greatestgivers.xls"), trim_ws = TRUE)

mri_file <- here("Firas-MRI.xlsx")
mri <- read_excel(mri_file, range = "A1:L12")
mri <- mri[, -10]
mri <- mri %>% 
  pivot_longer(cols = "Slice 1":"Slice 8",
               names_to = "slice_no",
               values_to = "value")