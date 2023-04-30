--CREATING NEW DATABASE

CREATE DATABASE SALES_DB;

USE DATABASE SALES_DB;

USE SCHEMA PUBLIC;

--CREATE TABLE

CREATE OR REPLACE TABLE IOWA_SALES(
                        INVOICE_NUMBER VARCHAR(255),
                        DATE VARCHAR(255),
                        STORE_NUMBER INT,
                        STORE_NAME VARCHAR(255),
                        ADDRESS VARCHAR(255),
                        CITY VARCHAR(255),
                        ZIP_CODE VARCHAR(255),
                        STORE_LOCATION VARCHAR(255),
                        COUNTY_NUMBER INT,
                        COUNTY VARCHAR(255),
                        CATEGORY VARCHAR(255),
                        CATEGORY_NAME VARCHAR(255),
                        VENDOR_NUMBER INT,
                        VENDOR_NAME VARCHAR(255), 
                        ITEM_NUMBER INT,
                        ITEM_DESCRIPTION VARCHAR(255),
                        PACK INT,
                        BOTTLE_VOLUME INT, 
                        STATE_BOTTLE_COST FLOAT,   
                        STATE_BOTTLE_RETAIL FLOAT,   
                        BOTTLE_SOLD INT,   
                        SALES FLOAT,   
                        VOLUME_SOLD_LITERS FLOAT,   
                        VOLUME_SOLD_GALLONS FLOAT   
                       );

SELECT * FROM IOWA_SALES; 
