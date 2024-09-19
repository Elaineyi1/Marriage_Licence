#### Preamble ####
# Purpose: Test the data from Open Data Toronto
# Author: Boxuan Yi
# Date: 19 September 2024
# Contact: boxuan.yi@utoronto.ca
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)
all(duplicated(simulated_data$id) == FALSE)
marriage_licenses_numeric <- is.numeric(simulated_data$MARRIAGE_LICENSES)
