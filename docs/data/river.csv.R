library(tidyhydat)
library(readr)


fraser <- hy_daily("08MF005")

# write_csv(fraser, "fraser.csv")


writeLines(format_csv(fraser))