# Amazon Sales Analytics

An end-to-end data analytics project built using **Python, Pandas, MySQL, SQL, and Power BI** to transform raw Amazon sales data into a structured analytical solution and interactive business dashboard.

## Overview

This project demonstrates the complete data analytics workflow:

- Data exploration and quality validation
- Data cleaning and ETL using Python and Pandas
- Relational database design using MySQL
- Dimensional data modelling
- SQL-based business analysis
- Interactive Power BI dashboard development

## Technology Stack

**Python · Pandas · MySQL · SQL · Power BI · Git & GitHub**

## Data Pipeline

Raw Amazon Sales CSV → Python ETL → MySQL Staging → Dimensional Model → SQL Analysis → Power BI

## Database Model

The analytical database consists of:

- **fact_sales** — transactional sales information
- **dim_product** — product and SKU information
- **dim_customer** — shipping location information
- **dim_date** — date and calendar information

### Data Model

![Amazon Sales Data Model](docs/data_model.png)

## SQL Analysis

The project analyses:

- Revenue by product category
- Top 10 SKUs by revenue
- Monthly revenue trends
- Revenue by fulfilment method
- Order status performance
- Top shipping cities
- B2B vs non-B2B sales

## Power BI Dashboard

The interactive dashboard provides:

- Total Revenue
- Total Orders
- Units Sold
- Average Order Value
- Revenue by Month
- Revenue by Category
- Top 10 SKUs by Revenue
- Revenue by Fulfilment
- Year and Category filters

### Dashboard Preview

![Amazon Sales Analytics Dashboard](docs/dashboard.png)

## Data Quality

- **128,975** raw records
- **22** original columns
- **128,975** cleaned records
- **21** columns after ETL
- Missing-value analysis
- Duplicate detection
- Data-type validation
- Date conversion and text cleaning

## Project Structure

| Component | Description |
|---|---|
| `python/` | Data exploration and ETL pipeline |
| `sql/` | Database schema and analytical queries |
| `powerbi/` | Power BI dashboard |
| `docs/` | Dashboard and data model images |
| `data/` | Raw and processed data |
| `requirements.txt` | Python dependencies |

## How to Run

```bash
git clone https://github.com/Krithikav305/Amazon-Sales-Analytics.git
cd Amazon-Sales-Analytics
pip install -r requirements.txt
python python/explore_data.py
python python/etl_pipeline.py
Skills

Data Cleaning · ETL · Python · Pandas · SQL · MySQL · Data Modelling · Power BI · Data Visualization · Git