# This script is to add features into the original data set.

# Use the function "rollmean" from "zoo" package to calculate the moving average with a specified window.
# For example, moving average of sensor 1 based on the 5 most recent values can be obtained by
zoo::rollmean(data$s1, 5)

# Similarly moving standard deivation and other statistical metrics can be obtained by "rollapply".
zoo::rollapply(data$s1, 5, sd)

featureAggregation <- function(data, 
                               window = 5) {
  data <- mutate(data, )
}

# Use dply::ddply and dply::summarise together to get summary for multiple columns for each separate row variable.
ddply(data, "id", summarise, max = max(cycle))