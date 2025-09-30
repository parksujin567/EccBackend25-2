library(dplyr)
library(tidyr)

project_dir <- "C:/Users/Sujin/OneDrive - 이화여자대학교/6학기/빅데시(이지영)/population-poverty"
file_path <- file.path(project_dir, "population-poverty.csv")
dat <- read.csv(file_path, header = TRUE)
str(dat)

pop_poverty_dat<- dat %>%
  filter(!grepl("World|PIP", Entity, ignore.case=TRUE)) %>%
  group_by(Year, Entity) %>%
  summarise(poverty=sum(between..8.30.and..10.a.day+between..4.20.and..8.30.a.day+between..3.and..4.20.a.day+X.3.a.day), .groups='drop') %>%
  pivot_wider(names_from=Year, values_from=poverty) 

pop_poverty_dat[is.na(pop_poverty_dat)] <-0

write.csv(pop_poverty_dat, file = file.path(project_dir, "population_poverty_wide.csv"))