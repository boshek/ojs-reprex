library(tidyhydat)
library(readr)
library(dplyr)


fraser <- hy_daily("08MF005") %>% 
    filter(!is.na(Value))



writeLines(format_csv(fraser))

## A long vector for fontsize
# hy_stations() %>% 
#     mutate(big_names = nchar(STATION_NAME)) %>% 
#     select(big_names, STATION_NAME) %>% 
#     arrange(desc(big_names)) %>% 
#     head(10) %>% 
#     pull(STATION_NAME) %>% 
#     dput()
