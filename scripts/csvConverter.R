# Reformat the original Turbo Engine training data set and save them into new .csv files.

csv_converter <- function(data_path, data_file_name) {
  data <- read.csv(paste(data_path, data_file_name, ".txt", sep = ""), header = F, sep = " ")
  
  # subset the first 1 to 26 columns of data.
  data <- data[, 1:26]
  
  # rename the columns
  names_new <- c("id", "cycle", "setting1", "setting2", "setting3", paste(rep("s", 21), as.character(1:21), sep = ""))
  names(data) <- names_new
  
  write.csv(data, paste(data_path, data_file_name, ".csv", sep = ""), row.names = FALSE)
}