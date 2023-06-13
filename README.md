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
- [Analisys](#Some of the analysis that I was able to interpret from this study.)
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
```
git clone https://github.com/FilipeSCampos/Rproject.git
```
# Open R console
R

# Install packages
```
install.packages(c("ggplot2", "dplyr", "tidyverse"))
Rscript analysis.R
```

Feel free to modify the content as needed to match your specific project.

## Some of the analysis that I was able to interpret from this study.


![Capturar](https://github.com/FilipeSCampos/Rproject/assets/113521439/23002b32-f62e-491e-a20b-c7e31fa25b33)

Here are the initial analyses I did, starting with the overall statistics of the adjusted closing price for each brand. 

As we can see, throughout the history of these three brands, the average of their stock prices remains relatively similar, ranging from $14 to $18. However, the maximum values of their stocks are significantly higher, and that will be the main focus of this analysis. 


![Capturar](https://github.com/FilipeSCampos/Rproject/assets/113521439/ed624aec-fcda-4f3b-9f97-f9bf99a15486)

In the first 20 years, we can see that AMD was leading the market, but starting from 1995, Intel began experiencing growth. This was likely due to the launch of the Intel Pentium Pro, the sixth generation of x86 chips, which featured several improvements over its predecessor, Alongside the release in 2000’s of the Intel Pentium 4, which featured a completely different design, Intel continued to solidify its position in the market. The Pentium 4 was a significant advancement in terms of performance and architecture, further contributing to Intel's growth and market dominance. However, during this initial boom, the stock prices only reached $40, and NVIDIA was not yet a part of this competition. 

![Capturar](https://github.com/FilipeSCampos/Rproject/assets/113521439/c48bc803-43f7-4700-a065-eb7045cab82a)

Let's fast forward to 2010, passing through 2006 where AMD experiences another surge. During this time, AMD and Intel were engaged in a competition to have the fastest dual-core processors on the market. On AMD's side, they had the Athlon 64 X2 (AM2), while Intel had their Core 2 Duo, which were replacing the Pentium D processors. It was also during this period that dual-core processors began to become a standard. 

As we can see, AMD emerged victorious from this competition. Following that, the stock prices of both Intel and AMD started to correct, with Intel surpassing AMD in 2009. Meanwhile, NVIDIA experienced a slight increase. By 2010, all three brands were hovering around a range of $15 or lower per share, with Intel leading the pack. 

![Capturar](https://github.com/FilipeSCampos/Rproject/assets/113521439/ee151485-acff-47da-8bef-77278206ea9c)

Arriving in 2020, during the time when the pandemic occurred, all three brands had their stocks around $30. The market had already corrected itself, and both NVIDIA and AMD were able to compete with Intel using their latest generation of graphics cards. However, starting from 2020, there was an astronomical surge in the stocks of NVIDIA and AMD, while Intel struggled to keep up. This surge was primarily driven by the large-scale Bitcoin mining operations. 

![image](https://github.com/FilipeSCampos/Rproject/assets/113521439/2ed0bcf0-d292-4cf9-b810-f17216daa70d)

In October 2021, Bitcoin experienced a historic high, surpassing the $66,000 mark in market value. Just a few days after this peak, the stocks of NVIDIA and AMD also reached their highest points. However, NVIDIA's stock value was significantly higher than that of AMD, more than double in fact. This was because NVIDIA's graphics cards were preferred by many due to their superior graphical processing power compared to AMD's offerings. 

![image](https://github.com/FilipeSCampos/Rproject/assets/113521439/cd9421f3-cbee-42b6-8528-b336afb81b90)

Throughout the history of the GPU market, we observed fluctuations in the stock prices of the major brands, namely NVIDIA, AMD, and Intel. In the early years, AMD took the lead, but Intel gained momentum with the release of innovative processors like the Intel Pentium Pro and Pentium 4, driving its growth. AMD had its victories as well, particularly during the era of dual-core processors. 

However, as the market evolved and demand for graphics processing power increased, NVIDIA emerged as a dominant player, surpassing both AMD and Intel in terms of stock performance. The rise of Bitcoin mining in 2020 further fueled the demand for NVIDIA's powerful graphics cards, pushing their stock prices to new heights. AMD also experienced a surge but couldn't match NVIDIA's market value. 

In conclusion, while AMD and Intel had their respective moments of success, NVIDIA's superior graphical processing capabilities, combined with the demand generated by Bitcoin mining, propelled the company's stock prices to extraordinary levels. The GPU market continues to evolve, and competition among these brands remains fierce, as they strive to meet the ever-increasing demands of the computing world. 


