library(dplyr)
library(tidyr)

project_dir <- "C:/Users/Sujin/Downloads" 
file_path <- file.path(project_dir, "dat_gapminder.csv")
dat <- read.csv(file_path, header = TRUE)

pop_summary_dplyr <-dat %>%
    group_by(year, continent) %>%
    summarise(total_pop=sum(population), .groups='drop') %>%
    pivot_wider(names_from=continent, values_from=total_pop)
head(pop_summary_dplyr)

write.csv(pop_summary_dplyr, file = file.path(project_dir, "dat_gapminder_wide.csv"))