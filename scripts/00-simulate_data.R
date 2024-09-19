#### Preamble ####
# Purpose: Simulate the data from Open Data Toronto
# Author: Boxuan Yi
# Date: 19 September 2024
# Contact: boxuan.yi@utoronto.ca
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)
library(dplyr)

# Set the seed for reproducibility
set.seed(123)

# Define number of rows
n <- 500

# Simulate data
simulated_data <- data.frame(
  id = 1:n,
  CIVIC_CENTRE = sample(LETTERS[1:5], n, replace = TRUE), # Code of civic centre (A-E)
  MARRIAGE_LICENSES = rpois(n, lambda = 10), # Number of marriage licenses from Poisson distribution
  TIME_PERIOD = sample(seq(as.Date('2022-01-01'), as.Date('2024-12-31'), by="month"), n, replace = TRUE) # Random monthly dates
)

# Preview the first few rows of the simulated data
head(simulated_data)

# Optionally, save the data to a CSV file
# write.csv(simulated_data, "/Users/yiboxuan1/Downloads/simulated_data.csv", row.names = FALSE)




