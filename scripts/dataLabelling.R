# This script performs data labeling on the original data set.
data_labelling <- function(data) {
  library(dplyr)
  
  id_list <- unique(data)
  
  for (n in 1:length(id_list)) {
    data_sub <- filter(data, id = id_list[n])
  }
  
  # add the feature of "rul", i.e., time-to-failure.
  data <- mutate(data, rul = )
}