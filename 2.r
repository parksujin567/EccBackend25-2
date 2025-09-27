library(dplyr)
library(tidyr)

project_dir <- "C:/Users/Sujin/Downloads" 
file_path <- file.path(project_dir, "dat_gapminder.csv")
dat <- read.csv(file_path, header = TRUE)

pop_country_year_dplyr <- dat %>%
  group_by(country, year) %>%
  summarise(total_pop = sum(population, na.rm = TRUE), .groups = "drop") %>%
  pivot_wider(names_from = year, values_from = total_pop)
pop_country_year_dplyr[1:5,1:5]

write.csv(pop_country_year_dplyr, file = file.path(project_dir, "dat_gapminder_race.csv"))