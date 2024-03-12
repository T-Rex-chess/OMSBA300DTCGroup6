# Group Data
if (!require("ipumsr")) stop("Reading IPUMS data into R requires the ipumsr package. It can be installed using the following command: install.packages('ipumsr')")
library(rio)
library(dplyr)
library(tidyverse)
library(vtable)

ddi <- read_ipums_ddi("cps_00002.xml")
data <- read_ipums_micro(ddi)
industry_df <- import('indnames.csv')