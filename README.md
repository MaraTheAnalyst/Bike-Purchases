# E-commerce Sales Analysis

## Project Overview
This project focuses on cleaning, exploring, and analyzing a bike buyer dataset using SQL and Power BI. The aim was to transform raw customer data into a clean, structured format and generate meaningful insights into the factors that influence bicycle purchases, such as income level, age, commute distance, and demographic characteristics.

The final output includes structured SQL queries and an interactive Power BI dashboard, providing easy access to insights.

<img width="1920" height="1008" alt="Screenshot 2025-12-17 142049" src="https://github.com/user-attachments/assets/6d6d7215-fc06-4fe1-8801-ffe5be13434f" />

### Data Source
The primary dataset used for this analysis is the Bike Buyers CSV dataset. It contains demographic and lifestyle information for customers, including:
- Age
- Gender
- Income
- Marital status
- Education level
- Commute distance
- Region
- Bike purchase status

This dataset serves as the raw input for both SQL analysis and Power BI visualization.

### Problem Statement
Businesses often collect large volumes of customer data but struggle to translate it into actionable insights. This project addresses that challenge by analyzing historical bike buyer data to answer key business questions such as:
- Who is most likely to purchase a bike?
- What demographic or lifestyle factors influence buying decisions?
- How can customer segments be identified for targeted marketing?

### Objectives
- Explore bike buyer data to identify trends and patterns
- Use SQL to clean, transform, and prepare the dataset
- Analyze buyer behavior across demographic and lifestyle attributes
- Visualize insights using an interactive Power BI dashboard
- Present clear, stakeholder-ready insights without advanced technical barriers

### Tools Used
- SQL – Data cleaning, transformation, and analysis
- Power BI – Data visualization
- Data Source – CSV file

### Data Cleaning
Before analysis, the dataset was prepared to ensure accuracy, consistency, and relevance. The following steps were performed using SQL:
- Created a working table from the raw CSV data to preserve the original dataset.
- Checked for missing, null, and inconsistent values across key columns.
- Standardized categorical values (e.g., gender, marital status, education).
- Verified data types for numerical and categorical fields.
- Removed duplicate records where applicable.
- Renamed columns for clarity and readability.

### Data Exploration
After cleaning, exploratory queries were executed to understand the dataset structure and distribution. Key exploration steps included:
- Reviewing the cleaned dataset to confirm successful transformations.
- Analyzing buyer vs non-buyer distribution.
- Exploring income ranges and age groups among bike buyers.
- Examining commute distance patterns and their relationship with bike purchases.
- Segmenting customers by demographic and regional attributes.

### Data Analysis & Insights
Using the cleaned dataset, analytical SQL queries were written to uncover patterns and trends in bike purchasing behavior:
1. Buyer vs Non-Buyer Analysis
 - Counted total buyers and non-buyers.
 - Calculated purchase rates across demographic segments.
2. Income & Age Trends
 - Analyzed average income by purchase status.
 - Grouped customers by age ranges to identify high-conversion segments.
3. Commute Distance Impact
 - Evaluated purchase likelihood across different commute distance categories.
 - Identified commute ranges with higher purchase frequency.
4. Demographic & Regional Insights
 - Compared purchase behavior across gender, marital status, and education levels.
 - Analyzed regional distribution of bike purchases.

### Power BI Dashboard
The Power BI dashboard was built to present insights in a clear and interactive format. It includes:
- Overview of bike purchase trends
- Demographic and income breakdowns
- Interactive filters for deeper exploration
- Clear visuals designed for non-technical stakeholders

The dashboard allows non-technical stakeholders to easily explore trends and make data-driven decisions.

### Key Findings
- Cleaned and structured dataset ready for analysis and reporting.
- Identified demographic and lifestyle factors that influence bike purchases.
- Highlighted high-potential customer segments for targeted marketing.
- Delivered an interactive Power BI dashboard for business users.

### Limitations
- The dataset is limited to demographic and lifestyle attributes, with no transactional or behavioral data.
- Lack of detailed time-based fields restricts trend and seasonality analysis.
- Some data cleaning assumptions were required, which may introduce minor bias.
- Insights are delivered through Power BI, requiring access to Power BI Desktop or Service.
