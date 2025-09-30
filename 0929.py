project_dir <- "C:/Users/Sujin/Downloads"

data_filepath <- file.path(project_dir, "divorce_margarine.csv")

divorce_margarine <-read.csv(data_filepath, header=T)

lm_fit <- lm(data=divorce_magarine, divorce_rate_maine ~ margarine_)
summary(lm_fit)

library(dslabs)
data(admissions)