#### Preamble ####
# Purpose: Clean the data from Open Data Toronto
# Author: Boxuan Yi
# Date: 19 September 2024
# Contact: boxuan.yi@utoronto.ca
# Pre-requisites: None

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Clean data ####
data_raw <- read_csv("data/data_raw.csv")
data_cleaned <- clean_names(data_raw)

#### Save data ####
write_csv(data_cleaned, "outputs/data/analysis_data.csv")
