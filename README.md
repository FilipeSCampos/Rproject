# Rproject
### Repository for my college R project.

### Notebook with data analysis of stock prices for the leading graphics card brands in the market: Intel, NVIDIA, and AMD.

##### The data base im using is this NVIDIA, AMD, Intel, ASUS, MSI share prices (GPU) on kaggle
##### Originally posted on April 12, 2023.
##### Maintained by ALEXANDER KAPTUROV
##### The objective of the database is to catalog the leading GPU brands based on daily statistics such as the highest stock price, lowest stock price, closing price, and trading volume.
# Stock Analysis and Visualization

This repository contains code for analyzing and visualizing stock data using R. The code focuses on the stock prices and trading volumes of NVIDIA, AMD, and Intel over different time periods.

## Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Usage](#usage)

## Introduction

This project aims to analyze and visualize the stock prices and trading volumes of NVIDIA, AMD, and Intel using R programming language. The code retrieves historical stock data from CSV files, performs data manipulation and transformation, and generates visualizations to gain insights into the stock market trends.

The code provides the following features:

- Merging stock data from multiple CSV files into a single data frame.
- Handling missing values in stock prices.
- Plotting line graphs to visualize the movement of stock prices over different time periods.
- Scaling the volume values for better visualization.
- Creating histograms to analyze the trading volumes of each company.

## Prerequisites

To run the code, you need to have the following software and packages installed:

- R programming language
- R packages: ggplot2, dplyr, tidyverse

Make sure you have the necessary CSV files containing the historical stock data for NVIDIA, AMD, and Intel.
## Usage

1. Clone the repository:

```shell
git clone https://github.com/FilipeSCampos/Rproject.git

# Open R console
R

# Install packages
install.packages(c("ggplot2", "dplyr", "tidyverse"))
Rscript analysis.R


Feel free to modify the content as needed to match your specific project.
