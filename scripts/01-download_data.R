#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Boxuan Yi
# Date: 19 September 2024
# Contact: boxuan.yi@utoronto.ca
# Pre-requisites: None


#### Workspace setup ####
# install.packages('opendatatoronto')
# install.packages('tidyverse')
# install.packages('dplyr')
library(opendatatoronto)
library(tidyverse)
library(dplyr)

#### Download data ####
# get package
package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

# get all resources for this package
resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data_raw <- filter(datastore_resources, row_number()==1) %>% get_resource()

#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data_raw, "data/data_raw.csv") 

         
