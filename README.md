# Stats19MySQL
Database and queries for UK STATS19 traffic collision data using MySQL. This is based on [Philip Shore's stat19 project](https://github.com/pshore/stats19) but adapted for MySQL rather than PostGIS.

This project creates a MySQL spatial database of the UKs STATS19 road casualty data (accidents, casualties and vehicles). For more information about STATS19 see here: https://www.gov.uk/government/collections/road-accidents-and-safety-statistics

# Instructions
## Download the data from data.gov.uk
The STATS19 datasets can be downloaded from data.gov.uk here: https://data.gov.uk/dataset/road-accidents-safety-data You can now (as January 2016) download all data from 2005 to 2014 in one file. This is the one you want.
Unzip the files (Accidents0514.csv, Casualties0514.csv and Vehicles0514.csv) into /data/core-tables.

## Run queries to create the database

Run each of these in order.
1. MySQL queries for for creating the MySQL database and tables are in /sql/Create Tables.sql
2. Queries importing data are in /sql/Populate Tables.sql, you will need to update the path for each of the files to the project directory
3. For creating views are in /sql/Create Views.sql

## Query the data
Examples of queries are in /sql/Example queries.sql

If you need to get a MySQL server set up quickly on Windows then [XAMPP](https://www.apachefriends.org) will help you (although they've switched to MariaDB recently, it should be compatable)
I recommend the [MySQL Workbench](https://www.mysql.com/products/workbench/) tool for running these queries.
The database includes geometry data so GIS packages that support MySQL databases like [QGIS](http://www.qgis.org/) will be able to import and display the data easily.