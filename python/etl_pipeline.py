import pandas as pd

# Load raw data
input_file = "data/raw/Amazon Sales.csv"
output_file = "data/processed/amazon_sales_cleaned.csv"

df = pd.read_csv(input_file)

print("Original shape:", df.shape)

# Remove unnecessary index column
df = df.drop(columns=["index"])

# Convert Date to proper date format
df["Date"] = pd.to_datetime(df["Date"], format="%y/%m/%d", errors="coerce")

# Clean text columns
text_columns = [
    "Status",
    "Fulfilment",
    "Sales Channel",
    "ship-service-level",
    "Style",
    "SKU",
    "Category",
    "Size",
    "ASIN",
    "Courier Status",
    "currency",
    "ship-city",
    "ship-state",
    "ship-country",
    "promotion-ids"
]

for column in text_columns:
    df[column] = df[column].astype("string").str.strip()

# Fill missing location values
df["ship-city"] = df["ship-city"].fillna("Unknown")
df["ship-state"] = df["ship-state"].fillna("Unknown")
df["ship-country"] = df["ship-country"].fillna("Unknown")

# Convert B2B boolean values to MySQL-compatible 0/1
df["B2B"] = df["B2B"].astype(int)

# Remove rows without essential sales information
df = df.dropna(subset=["Order ID", "SKU", "Qty", "Amount"])

# Save cleaned data
df.to_csv(output_file, index=False)

print("Cleaned shape:", df.shape)
print("Cleaned data saved to:", output_file)

print("Missing values after cleaning:")
print(df.isnull().sum())