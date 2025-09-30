library(dplyr)
library(tidyr)

project_dir <- "C:/Users/Sujin/OneDrive - 이화여자대학교/6학기/빅데시(이지영)"
file_path <- file.path(project_dir, "countries.csv")
dat <- read.csv(file_path, header = TRUE)

dat[is.na(dat)]<-0

write.csv(dat, file = file.path(project_dir, "countries_wide.csv"))