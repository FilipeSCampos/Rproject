# Libraries required for the project
library(ggplot2)
library(dplyr)


# Read the data
Nvidia <- '/cloud/project/DataSets/NVIDIA (1999-2023).csv'
AMD <- '/cloud/project/DataSets/AMD (1980-2023).csv'
Intel <- '/cloud/project/DataSets/Intel (1980-2023).csv'

# Read data into data frames
nvidia <- read.csv(Nvidia)
amd <- read.csv(AMD)
intel <- read.csv(Intel)

# Convert data frames to data frames
nvidia <- data.frame(nvidia)
amd <- data.frame(amd)
intel <- data.frame(intel)

# Merge data frames on the 'Date' column
merged_df <- merge(nvidia[, c("Date", "Adj.Close")], 
                   amd[, c("Date", "Adj.Close")], 
                   by = "Date", all = TRUE)
merged_df <- merge(merged_df, 
                   intel[, c("Date", "Adj.Close")], 
                   by = "Date", all = TRUE)

# Rename columns
colnames(merged_df) <- c("Date", "Adj_Close_NVIDIA", "Adj_Close_AMD", "Adj_Close_INTEL")

# Replace NA values with 0 in the desired column
merged_df <- merged_df %>%
  mutate(Adj_Close_NVIDIA = replace(Adj_Close_NVIDIA, is.na(Adj_Close_NVIDIA), 0))

# Convert 'Date' column to Date format
merged_df$Date <- as.Date(merged_df$Date, format = "%Y-%m-%d")

# Summary of the data frame
summary_df <- subset(merged_df, select = -Date)
summary(summary_df)

# Create the plot
ggplot(merged_df, aes(x = Date)) +
  geom_line(aes(y = Adj_Close_NVIDIA, color = "NVI"), size = 1) +
  geom_line(aes(y = Adj_Close_AMD, color = "AMD"), size = 1) +
  geom_line(aes(y = Adj_Close_INTEL, color = "INT"), size = 1) +
  labs(x = "Date", y = "Adj Close", title = "Movement of Stock Price (1980-2023)") +
  scale_color_manual(values = c("NVI" = "green", "AMD" = "red", "INT" = "blue")) +
  theme_minimal()

# Cutting the data for better analysis, in this case from 2005 to 2020
data_desejada10 <- as.Date("2005-01-01")
data_desejada9 <- as.Date("2015-12-31")
dataset_cortado10 <- subset(merged_df, as.Date(Date) >= data_desejada10 & as.Date(Date) <= data_desejada9)

# Plotting the graph from 2005 to 2020
ggplot(dataset_cortado10, aes(x = Date)) +
  geom_line(aes(y = Adj_Close_NVIDIA, color = "NVI"), size = 1) +
  geom_line(aes(y = Adj_Close_AMD, color = "AMD"), size = 1) +
  geom_line(aes(y = Adj_Close_INTEL, color = "INT"), size = 1) +
  labs(x = "Date", y = "Adj Close", title = "Movement of Stock Price (2005-2015)") +
  scale_color_manual(values = c("NVI" = "green", "AMD" = "red", "INT" = "blue")) +
  theme_minimal()

# Cutting the data for better analysis, in this case from 2015 to 2020
data_desejada <- as.Date("2015-01-01")
data_desejada1 <- as.Date("2020-12-31")
dataset_cortado <- subset(merged_df, as.Date(Date) >= data_desejada & as.Date(Date) <= data_desejada1)

# Plotting the graph from 2015 to 2020
ggplot(dataset_cortado, aes(x = Date)) +
  geom_line(aes(y = Adj_Close_NVIDIA, color = "NVI"), size = 1) +
  geom_line(aes(y = Adj_Close_AMD, color = "AMD"), size = 1) +
  geom_line(aes(y = Adj_Close_INTEL, color = "INT"), size = 1) +
  labs(x = "Date", y = "Adj Close", title = "Movement of Stock Price (2015-2020)") +
  scale_color_manual(values = c("NVI" = "green", "AMD" = "red", "INT" = "blue")) +
  theme_minimal()

# Cutting the data for better analysis, in this case from 2020 to 2021
data_desejada2 <- as.Date("2020-01-01")
data_desejada3 <- as.Date("2021-12-31")
dataset_cortado2 <- subset(merged_df, as.Date(Date) >= data_desejada2 & as.Date(Date) <= data_desejada3)

# Plotting the graph from 2020 to 2021
ggplot(dataset_cortado2, aes(x = Date)) +
  geom_line(aes(y = Adj_Close_NVIDIA, color = "NVI"), size = 1) +
  geom_line(aes(y = Adj_Close_AMD, color = "AMD"), size = 1) +
  geom_line(aes(y = Adj_Close_INTEL, color = "INT"), size = 1) +
  labs(x = "Date", y = "Adj Close", title = "Movement of Stock Price (2020-2021)") +
  scale_color_manual(values = c("NVI" = "green", "AMD" = "red", "INT" = "blue")) +
  theme_minimal()

# Cutting the data for better analysis, in this case from 2020 to 2022
data_desejada4 <- as.Date("2020-01-01")
data_desejada5 <- as.Date("2022-12-31")
dataset_cortado2 <- subset(merged_df, as.Date(Date) >= data_desejada4 & as.Date(Date) <= data_desejada5)

# Plotting the graph from 2020 to 2022
ggplot(dataset_cortado2, aes(x = Date)) +
  geom_line(aes(y = Adj_Close_NVIDIA, color = "NVI"), size = 1) +
  geom_line(aes(y = Adj_Close_AMD, color = "AMD"), size = 1) +
  geom_line(aes(y = Adj_Close_INTEL, color = "INT"), size = 1) +
  labs(x = "Date", y = "Adj Close", title = "Movement of Stock Price (2020-2022)") +
  scale_color_manual(values = c("NVI" = "green", "AMD" = "red", "INT" = "blue")) +
  theme_minimal()

# Convert the 'Date' column to Date format
nvidia$Date <- as.Date(nvidia$Date)

# Divide the volume by 1 billion to scale it from 0 to 1
nvidia$Volume <- nvidia$Volume/1000000000

# Plotting the histogram of volume over time
ggplot(nvidia, aes(x = Date)) +
  geom_bar(aes(y = Volume), stat = "identity", fill = "green", width = 50) +
  labs(title = ("Nvidia Volume")) +
  xlab("Date") +
  ylab("Volume") +
  theme_bw()

# Convert the 'Date' column to Date format
amd$Date <- as.Date(amd$Date)

# Divide the volume by 1 billion to scale it from 0 to 1
amd$Volume <- amd$Volume/1000000000

# Plotting the histogram of volume over time
ggplot(amd, aes(x = Date)) +
  geom_bar(aes(x = Date, y = Volume), stat = "identity", fill = "red", width = 50) +
  labs(title = ("AMD Volume")) +
  xlab("Date") +
  ylab("Volume") +
  theme_bw()

# Convert the 'Date' column to Date format
intel$Date <- as.Date(intel$Date)

# Divide the volume by 1 billion to scale it from 0 to 1
intel$Volume <- intel$Volume/1000000000

# Plotting the histogram of volume over time
ggplot(intel, aes(x = Date)) +
  geom_bar(aes(y = Volume), stat = "identity", fill = "blue", width = 50) +
  labs(title = ("Intel Volume")) +
  xlab("Date") +
  ylab("Volume") +
  theme_bw()

