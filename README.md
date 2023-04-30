# Snowflake-SQL-WalmartCommerceDB-AWS-Project
Creating a Walmart Commerce DB utilizing AWS, Snowflake, SnowSQL CLI, Apache Arrow, Python, ingesting Parquet &amp; JSON data, and creating Materialized Views, Search Optimization, Transient Tables, Clustering, Access Control Roles, monitoring and analyzing query performance &amp; more

# Start of project

Starting on the Snowflake platform:

![Start](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Start_Project_Snowflake.jpg)

Creating the Walmart database:

![WalmartDB](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Creating_Walmart_DB.jpg)

Creating a Permanent Table:

![Permanent Table](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Creating_Permanent_Tables.jpg)

Creating IN_PRODUCTION:

![IN_PRODUCTION](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Creating_In_Production_table.jpg)

Showing all three tables created:

![Results](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Tables_Created.jpg)

Showing Results from Data inserted:

![Data Inserted](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Seeing%20Results.jpg)

Creating transient tables: 

![Transient Tables](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Creating_Transient_Table.jpg)

Inserting data:

![Inserting Data](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Inserting_Data_Into_Table.jpg)

Cloning permanent table error:

![Cloning Table](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Cloning_error_temp_table.jpg)

Cloning a temporary table with success: 

![Cloning Table Correctly](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Cloning_temp_table_correctly.jpg)

Setting query history to 7 days and other querying. This is to allow looking at hitorical querying and going back in time:

![Historical](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Setting_History_to_7_Days.jpg)

Selecting from IN_BETA and IN_PRODUCTION TABLES: 

![In_production](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Querying_In_Production_Setting_Data.jpg)

Editing queries:

![Editing queries](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Editing_Data.jpg)

Creating views; views do not store data themselves but present data in a structured way:

![Creating Views](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Creating_Views.jpg)

Inserting order details:

![Inserting order details](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Inserting_Order_Details.jpg)

Query results:

![Query Results](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Results.jpg)

Creating more views:

![Creating More views](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Creating_more_views.jpg)

Seeing the query map/view where all actions can be seen in the file (unsecured file):

![Querying Map](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Querying_Map.jpg)

Creating the security layer for the query map:

![Security Layer](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Creating_Security_Layer.jpg)

Queryign map after securing the view with a security layer and seeing that most of the steps are hidden:

![Querying Map After Security](https://github.com/MayCooper/Snowflake-SQL-WalmartCommerceDB-AWS-Project/blob/main/Images/Query_map_after_secure_view.jpg)

