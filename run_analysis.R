# Variables for data download and processing
downloadDir <- "E:/data/"  # Directory to store downloaded data
DataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
DataFilename <- "Data.zip"
DataDFn <- file.path(downloadDir, DataFilename)  # Full path to the downloaded zip file
workedDataDir <- "E:/data/data"  # Directory to store processed data

# Creating and checking directories
if (!dir.exists(downloadDir)) {
    dir.create(downloadDir, recursive = TRUE)
    download.file(url = DataUrl, destfile = DataDFn)  # Downloading the data
}
if (!dir.exists(workedDataDir)) {
    dir.create(workedDataDir, recursive = TRUE)
    unzip(zipfile = DataDFn, exdir = workedDataDir)  # Unzipping the downloaded data
}

# Loading training and testing data
x_train <- read.table(file.path(workedDataDir, "UCI HAR Dataset/train/X_train.txt"))
y_train <- read.table(file.path(workedDataDir, "UCI HAR Dataset/train/Y_train.txt"))
s_train <- read.table(file.path(workedDataDir, "UCI HAR Dataset/train/subject_train.txt"))

x_test <- read.table(file.path(workedDataDir, "UCI HAR Dataset/test/X_test.txt"))
y_test <- read.table(file.path(workedDataDir, "UCI HAR Dataset/test/Y_test.txt"))
s_test <- read.table(file.path(workedDataDir, "UCI HAR Dataset/test/subject_test.txt"))

# Merging data
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
s_data <- rbind(s_train, s_test)

# Loading additional data
feature <- read.table(file.path(workedDataDir, "UCI HAR Dataset/features.txt"))
a_label <- read.table(file.path(workedDataDir, "UCI HAR Dataset/activity_labels.txt"))
a_label[, 2] <- as.character(a_label[, 2])

# Selecting features and processing their names
corCols <- grep("-(mean|std).*", as.character(feature[, 2]))
corColNames <- feature[corCols, 2]
corColNames <- gsub("-mean", "Mean", corColNames)  # Replace '-mean' with 'Mean'
corColNames <- gsub("-std", "Std", corColNames)    # Replace '-std' with 'Std'
corColNames <- gsub("[-()]", "", corColNames)      # Remove '-' and '()'

# Selecting and renaming columns
x_data <- x_data[corCols]
fullData <- cbind(s_data, y_data, x_data)
colnames(fullData) <- c("Subject", "Activity", corColNames)

# Categorizing activities and transforming columns
fullData$Activity <- factor(fullData$Activity, levels = a_label[, 1], labels = a_label[, 2])
fullData$Subject <- as.factor(fullData$Subject)

# Transforming data to "long" format and aggregating
if (!require(reshape2)) {
  install.packages("reshape2")
  library(reshape2)
}
meltData <- melt(fullData, id = c("Subject", "Activity"))
tidyData <- dcast(meltData, Subject + Activity ~ variable, mean)

# Saving worked data
write.table(tidyData, file.path("E:/data", "tidy_dataset.txt"), row.names = FALSE, quote = FALSE)
