# Data Source for ETL project

2 CSV files were downloaded from Kaggle
File 1 - inflation_consumer_prices.csv - Contains worldwide consumer inflation data for countries from 1960 - 2017
File 2 - Oil and Gas 1932-2014.csv - Contains worldide oil and gas production volumes and prices from 1932 - 2014


# Data Cleanup and Analysis

In Jupyter Notebook the following was performed

Put each CSV into a pandas DataFrame

The files were filtered to show only data for the year 2000.


Copy Only the columns needed into a new da# Data Source for ETL project

2 CSV files were downloaded from Kaggle
File 1 - inflation_consumer_prices.csv - Contains worldwide consumer inflation data for countries from 1960 - 2017
File 2 - Oil and Gas 1932-2014.csv - Contains worldide oil and gas production volumes and prices from 1932 - 2014


taFrame from the 2 data files
For file 1 - Inflation Data - columns - "Country Name", County Code", "2000: Inflation",
For file 2 - Oil and Gas Data - "cty_name","id","year","oil_price_2000","oil_value_2000","gas_price_2000","population
Columns were renamed as required.

Perform transformation on the "oil gas price" dataframe and group on country id to get data rolled up to country level since the inflation data file information is given at country level. 
Use averages agregation to get the right values for oil price, gas price, oil volumes and population columns from the "oil and gas Data"

Drop the null data from the inflation data file


# Load Data into Database

The Extracted data is in rows and columns so it will be loaded into the Postgress relational database

Create a connection to database.

Check for a successful connection to the Postgres database and confirm that the tables have been created.

Append DataFrames to tables. Use the index as required.

Confirm successful **Load** by querying database.

Join the two tables and select the data

