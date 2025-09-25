# Capstone-pizza-sales-project

### Project Overview

This data analysis projects aims identify relevant sales trends and generate recommendations for a better sales outcome.

### Data Source

The data used for this project is the “capstone-project.xlsx” containing detailed information about the pizza sales

### Tools

- Microsoft Excel: Data Cleaning
- MySQL: Exploratory data analysis
- Microsoft Power BI: Data visualization

### Data Cleaning

The following tasks were performed:
- Data loading and inspection
- Data formatting in preparation for EDA
- The formatted data is saved on another sheet of the dataset on the same document and labeled "Capstone duplicate"

### Exploratory Data Analysis (EDA)

1. The data was loaded into MySQL
2. Data formatting was done for the date column of the dataset to present it in date format recognizable by MySQL
3. Exploratory data analysis was done to answer key questions which include:
   - What is the total price of pizza sold?
   - How many quantities of pizza was sold?
   - What pizza size and category made the highest sales?

 The sql script "capstone.sql" is attached 
 
### Results

- The total price of pizza sold during the analysed period is $8.50K
- The total quantity of pizza sold during the analysed period is 509 pieces
- Large (L) pizza size made the highest sales ($4.39K) while "Classic" pizza category made the highest sales ($2.35K)  
- There is a strong association between sales and pizza size with the large pizzas making over 50% of the entire sales

### Visualization

Power BI was connected to SQL server and the tables generated during analysis was used to create a "Capstone pizza sales analysis" dashboard.
Power BI file is labelled "Capstone_b_s" and attached.

### Recommendation

1. More resources should be directed towards prodcution and sales of pizzas in the Large (L) size
2. 2. Production of pizzas in the Extra-large (XL) size can be be suspended and it's resources channelled to a more prodcutive pizza size.
