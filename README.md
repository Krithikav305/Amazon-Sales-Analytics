Amazon Sales Analytics
Overview

Amazon Sales Analytics is an end-to-end data analytics project built to demonstrate practical skills in data engineering, data modelling, SQL analysis, and business intelligence.

The project transforms raw Amazon sales data into a structured analytical database and an interactive Power BI dashboard.

Project Objectives
Clean and transform raw sales data using Python
Build a relational database using MySQL
Design a dimensional data model using fact and dimension tables
Perform analytical queries using SQL
Create an interactive Power BI dashboard
Extract business insights from sales, products, fulfilment, and shipping locations
Technologies Used
Python
Pandas
MySQL
SQL
Power BI
Git & GitHub
CSV
Project Architecture
Raw Amazon Sales CSV
        |
        v
Python ETL Pipeline
        |
        v
Cleaned Sales Data
        |
        v
MySQL Staging Table
        |
        v
Dimensional Data Model
        |
        +------------------+
        |                  |
        v                  v
Dimension Tables      Fact Sales
        |                  |
        +--------+---------+
                 |
                 v
            SQL Analysis
                 |
                 v
        Power BI Dashboard
Data Pipeline
1. Data Extraction

The raw Amazon sales dataset is loaded from CSV format using Python and Pandas.

2. Data Cleaning

The ETL pipeline performs the following steps:

Removes the unnecessary index column
Converts the order date into a proper date format
Cleans text fields
Handles missing shipping location values
Converts B2B values into database-compatible Boolean values
Removes records missing essential sales information
3. Data Loading

The cleaned data is loaded into a MySQL staging table and then transformed into a dimensional analytical model consisting of fact and dimension tables.

Database Modelling

The analytical database is designed using a dimensional modelling approach.

Dimension Tables
dim_customer — shipping location attributes
dim_product — product and SKU attributes
dim_date — date, month, quarter, and year attributes
Fact Table
fact_sales — transactional sales information including orders, quantities, revenue, fulfilment, status, and B2B information
Relationships

The fact_sales table connects to the dimension tables using foreign keys:

dim_customer  ──── 1 : many ──── fact_sales
dim_product   ──── 1 : many ──── fact_sales
dim_date      ──── 1 : many ──── fact_sales
Data Model
<img src="docs/data_model.png" alt="Amazon Sales Data Model" width="100%">
SQL Analysis

SQL queries are used to analyse the sales data from multiple business perspectives.

The analysis includes:

Revenue by product category
Top 10 SKUs by revenue
Monthly revenue trends
Sales and revenue by order status
Top shipping cities by revenue
Revenue by fulfilment method
B2B vs non-B2B sales
Power BI Dashboard

The project includes an interactive Power BI dashboard for analysing Amazon sales performance.

The dashboard contains:

Total Revenue
Total Orders
Units Sold
Average Order Value
Revenue by Month
Revenue by Category
Top 10 SKUs by Revenue
Revenue by Fulfilment
Year slicer
Category slicer

The dashboard is connected to the MySQL dimensional database and allows users to interactively explore sales performance.

Dashboard Preview
<img src="docs/dashboard.png" alt="Amazon Sales Analytics Dashboard" width="100%">
Data Quality

The raw dataset contains 128,975 records and 22 columns.

The Python ETL pipeline produces a cleaned dataset containing 128,975 records and 21 columns after removing the unnecessary index column.

Data quality checks include:

Missing-value analysis
Duplicate-row detection
Data-type validation
Date conversion
Text-field cleaning
Handling of missing shipping locations
Referential matching between fact and dimension tables

The current MySQL analytical database contains 83,935 loaded sales records.

Project Structure
Amazon-Sales-Analytics/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── docs/
│   ├── dashboard.png
│   └── data_model.png
│
├── powerbi/
│   └── amazon_sales_dashboard.pbix
│
├── python/
│   ├── explore_data.py
│   └── etl_pipeline.py
│
├── sql/
│   ├── analysis.sql
│   └── schema.sql
│
├── .gitignore
├── README.md
└── requirements.txt
How to Run
1. Clone the Repository
git clone https://github.com/Krithikav305/Amazon-Sales-Analytics.git
cd Amazon-Sales-Analytics
2. Install Python Dependencies
pip install -r requirements.txt
3. Run Data Exploration
python python/explore_data.py
4. Run the ETL Pipeline
python python/etl_pipeline.py
5. Set Up MySQL

Create the database and tables using:

sql/schema.sql

Load the cleaned data into the MySQL staging table and populate the dimension and fact tables.

6. Run SQL Analysis

The analytical queries are available in:

sql/analysis.sql
7. Open the Power BI Dashboard

Open:

powerbi/amazon_sales_dashboard.pbix

The dashboard connects to the MySQL analytical database.

Skills Demonstrated
Data Cleaning
ETL Development
Python & Pandas
SQL
Relational Database Design
Dimensional Data Modelling
Fact & Dimension Tables
Data Quality Validation
Business Intelligence
Power BI
Data Visualization
Analytical Problem Solving
Dataset

The project uses a publicly available Amazon sales dataset for educational and portfolio purposes.

The raw CSV data is intentionally excluded from Git version control because of its file size.

Author

Krithika Veera Perumal
M.Sc. Data Science
Friedrich-Alexander-Universität Erlangen-Nürnberg