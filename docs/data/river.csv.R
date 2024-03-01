library(tidyhydat)
library(readr)
library(dplyr)


fraser <- hy_daily("08MF005") %>% 
    filter(!is.na(Value))

writeLines(format_csv(fraser))