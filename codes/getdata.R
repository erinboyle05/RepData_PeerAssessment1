# This file downloads the data from the web, unzips the file
# and loads the data

# if (!file.exists("activity.csv")) {
#         
#         file_url <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"
#         download.file(file_url, "activity.zip", mode = "wb")
#         unzip("activity.zip")
#         dltimestamp <- Sys.time()
# }
data <- read.csv("activity.csv")
                   
